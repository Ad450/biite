import 'dart:io';

import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/dashboard/bloc/tags.bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DasboardBloc extends Cubit<DashboardState> {
  DasboardBloc(
    this._projectRepository,
    @Named('createProject') this._compensationFieldBloc,
    @Named('createProject') this._descriptionFieldBloc,
    @Named("createProject") this._titleFieldBloc,
    @Named("createProject") this._tagsBloc,
  ) : super(const DashboardState.initial());

  final ProjectRepository _projectRepository;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final CompensationFieldBloc _compensationFieldBloc;
  final TagsBloc _tagsBloc;
  final NameFieldBloc _titleFieldBloc;

  DashboardState getErrorState(String message) => DashboardState.error(message: message);
  DashboardState getFileSelectedState(Set<File> files) => DashboardState.fileSelected(files: files);

  void pickFiles() async {
    Set<File> files = {};
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

      if (result != null) {
        for (var e in result.files) {
          String newPath = e.path!.toLowerCase();
          bool fileExists = files.any((element) => element.path.toLowerCase().split("-")[1] == newPath.split("-")[1]);

          if (!fileExists) {
            files.add(File(e.path!));
          }
        }
        emit(getFileSelectedState(files));
      } else {
        emit(getErrorState('file select failed'));
      }
    } catch (e) {
      emit(getErrorState(e.toString()));
    }
  }

  void removeFile(String path) {
    /// make copy of files
    var files = <File>{
      ...state.maybeMap(orElse: () => {}, fileSelected: (fileState) => {...fileState.files})
    };

    /// remove file with path [path] from the copy
    /// update the state with the copy
    files.removeWhere((e) => e.path == path);
    emit(getFileSelectedState(files));
  }

  void createProject() async {
    bool isLoading = state.maybeWhen(orElse: () => false, loading: () => true);
    if (isLoading) return;

    emit(const DashboardState.loading());

    final description = _descriptionFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final compensation = _compensationFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final title = _titleFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    List<String> tags = _tagsBloc.state.maybeMap(orElse: () => <String>[], selected: (state) => state.tags);

    List<String> files = state.maybeMap(
      orElse: () => <String>[],
      fileSelected: (state) => state.files.map((e) => e.path).toList(),
    );

    if (title.isEmpty || description.isEmpty || compensation.isEmpty) {
      emit(const DashboardState.error(message: "fill all fields"));
      return;
    }

    final param = CreateProjectParam(
      description: description,
      files: files,
      rate: double.parse(compensation),
      tags: tags,
      title: title,
    );

    final result = await _projectRepository.createProject(param);
    result.fold(
      (l) => emit(getErrorState(l.message)),
      (r) => emit(const DashboardState.projectCreated()),
    );
  }
}

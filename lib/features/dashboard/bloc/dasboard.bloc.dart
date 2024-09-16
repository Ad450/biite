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
    this._tagsBloc,
  ) : super(const DashboardState.initial(
          description: "",
          files: {},
          compensation: 0,
          message: null,
        ));

  final ProjectRepository _projectRepository;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final CompensationFieldBloc _compensationFieldBloc;
  final TagsBloc _tagsBloc;
  final NameFieldBloc _titleFieldBloc;

  DashboardState getErrorState(String message) => DashboardState.error(
        description: state.description,
        files: state.files,
        compensation: state.compensation,
        message: message,
      );
  DashboardState getFileSelectedState(Set<File> files) => DashboardState.fileSelected(
        description: state.description,
        files: files,
        compensation: state.compensation,
        message: state.message,
      );

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
    var files = {...state.files};

    /// remove file with path [path] from the copy
    /// update the state with the copy
    files.removeWhere((e) => e.path == path);
    emit(getFileSelectedState(files));
  }

  void createProject() async {
    print("got here create project");
    emit(
      DashboardState.loading(
          description: state.description, files: state.files, compensation: state.compensation, message: state.message),
    );
    print("this is from dashboard ${_tagsBloc.state.tags}");

    final param = CreateProjectParam(
      description: _descriptionFieldBloc.state.data,
      files: state.files.map((e) => e.path).toList(),
      rate: _compensationFieldBloc.state.data,
      tags: _tagsBloc.state.tags,
      title: _titleFieldBloc.state.data,
    );

    final result = await _projectRepository.createProject(param);
    result.fold(
      (l) => emit(getErrorState(l.message)),
      (r) => emit(DashboardState.projectCreated(
          description: state.description, files: state.files, compensation: state.compensation, message: null)),
    );
  }
}

import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/dashboard/bloc/file.bloc.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/dashboard/bloc/tags.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProjectBloc extends Cubit<ProjectState> {
  ProjectBloc(
      this._projectRepository,
      @Named('createProject') this._compensationFieldBloc,
      @Named('createProject') this._descriptionFieldBloc,
      @Named("createProject") this._titleFieldBloc,
      @Named("createProject") this._tagsBloc,
      @Named("createProject") this._fileBloc)
      : super(const ProjectState.initial());

  final ProjectRepository _projectRepository;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final CompensationFieldBloc _compensationFieldBloc;
  final TagsBloc _tagsBloc;
  final NameFieldBloc _titleFieldBloc;
  final FileBloc _fileBloc;

  void createProject() async {
    bool isLoading = state.maybeWhen(orElse: () => false, loading: () => true);
    if (isLoading) return;

    emit(const ProjectState.loading());

    final description = _descriptionFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final compensation = _compensationFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final title = _titleFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    List<String> tags = _tagsBloc.state.maybeMap(orElse: () => <String>[], selected: (state) => state.tags);

    List<String> files = _fileBloc.state.maybeMap(
      orElse: () => <String>[],
      fileSelected: (state) => state.files.map((e) => e.path).toList(),
    );

    if (title.isEmpty || description.isEmpty || compensation.isEmpty) {
      emit(const ProjectState.error("fill all fields"));
      return;
    }

    _clearFields();

    final param = CreateProjectParam(
      description: description,
      files: files,
      rate: double.parse(compensation),
      tags: tags,
      title: title,
    );

    final result = await _projectRepository.createProject(param);
    result.fold(
      (l) => emit(ProjectState.error(l.message)),
      (r) {
        emit(const ProjectState.projectCreated());
      },
    );
  }

  void _clearFields() {
    _fileBloc.emit(const FileState.fileSelected(files: {}));
    _titleFieldBloc.nameController.clear();
    _descriptionFieldBloc.descriptionController.clear();
    _compensationFieldBloc.compensationController.clear();
    _tagsBloc.emit(const TagsState.selected(tags: []));
  }
}

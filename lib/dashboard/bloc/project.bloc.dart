import 'package:biite/dashboard/bloc/file.bloc.dart';
import 'package:biite/dashboard/bloc/dashboard.state.dart';
import 'package:biite/dashboard/bloc/tags.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/project_repository.dart';

@LazySingleton()
class ProjectBloc extends Cubit<ProjectState> {
  ProjectBloc(
      @Named('createProject') this._compensationFieldBloc,
      @Named('createProject') this._descriptionFieldBloc,
      @Named("createProject") this._titleFieldBloc,
      @Named("createProject") this._tagsBloc,
      @Named("createProject") this._fileBloc)
      : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const ProjectState.initial());

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

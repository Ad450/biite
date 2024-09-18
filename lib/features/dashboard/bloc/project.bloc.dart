import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/dashboard/bloc/tags.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProjectBloc extends Cubit<DashboardState> {
  ProjectBloc(
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
      (l) => emit(DashboardState.error(message: l.message)),
      (r) => emit(const DashboardState.projectCreated()),
    );
  }

  void fetchProjects() async {
    final activeProjectsResult = await _projectRepository.fetchActiveProjects();
    final createdProjectsResult = await _projectRepository.fetchCreatedProjects();

    activeProjectsResult.fold(
      (l) => emit(DashboardState.error(message: l.message)),
      (r) => emit(DashboardState.fetchActiveProjects(r)),
    );
    // Future.delayed(const Duration(milliseconds: 10));
    createdProjectsResult.fold(
      (l) => emit(DashboardState.error(message: l.message)),
      (r) => emit(DashboardState.fetchCreatedProjects(r)),
    );
  }
}

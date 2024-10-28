import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/src/di/di.config.dart';

final projectGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initializeProjectDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureProjectDependencies() => projectGetIt.initializeProjectDeps();

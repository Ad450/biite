import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:user_repository/src/di/di.config.dart';

final userGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'configureUserDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureUserRepositoryDependencies() => userGetIt.configureUserDeps();

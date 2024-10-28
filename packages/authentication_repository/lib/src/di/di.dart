import 'package:authentication_repository/src/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final authenticationGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'configureAuthDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureAuthenticationRepositoryDependencies() => authenticationGetIt.configureAuthDeps();

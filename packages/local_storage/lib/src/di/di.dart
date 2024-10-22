import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/src/di/di.config.dart';

final localStorageGetit = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureLocalStorageDependencies() => localStorageGetit.init();

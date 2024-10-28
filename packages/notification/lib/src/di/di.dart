import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:notification/src/di/di.config.dart';

final notificationGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'configureNotificationDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureNotificationDependencies() => notificationGetIt.configureNotificationDeps();

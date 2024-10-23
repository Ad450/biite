import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:messaging_repository/src/di/di.config.dart';

final messagingGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initializeMessagingRepoDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureMessagingRepositoryDependencies() => messagingGetIt.initializeMessagingRepoDeps();

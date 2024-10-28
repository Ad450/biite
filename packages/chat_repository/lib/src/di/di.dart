import 'package:chat_repository/src/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final chatGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initializeChatRepoDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureChatRepositoryDependencies() => chatGetIt.initializeChatRepoDeps();

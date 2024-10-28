import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void initializeBlocObserver() => Bloc.observer = BiiteObserver();

class BiiteObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('Bloc: ${bloc.runtimeType}, Change: $change');
  }
}

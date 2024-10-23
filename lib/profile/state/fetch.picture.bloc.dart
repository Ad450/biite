import 'dart:io';

import 'package:biite/profile/state/profile.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FetchPictureBloc extends Cubit<FetchPictureState> {
  FetchPictureBloc()
      : _imagePicker = ImagePicker(),
        super(const FetchPictureState.initial());

  final ImagePicker _imagePicker;

  void fetch() async {
    try {
      final image = await _imagePicker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(FetchPictureState.fetch(File(image.path)));
        return;
      }
    } catch (e) {
      emit(FetchPictureState.error(e.toString()));
    }
  }
}

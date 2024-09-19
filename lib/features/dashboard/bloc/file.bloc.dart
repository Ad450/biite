import 'dart:io';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FileBloc extends Cubit<FileState> {
  FileBloc() : super(const FileState.initial());

  FileState getErrorState(String message) => FileState.error(message: message);
  FileState getFileSelectedState(Set<File> files) => FileState.fileSelected(files: files);

  void pickFiles() async {
    Set<File> files = {};
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

      if (result != null) {
        for (var e in result.files) {
          String newPath = e.path!.toLowerCase();
          bool fileExists = files.any((element) => element.path.toLowerCase().split("-")[1] == newPath.split("-")[1]);

          if (!fileExists) {
            files.add(File(e.path!));
          }
        }
        emit(getFileSelectedState(files));
      } else {
        emit(getErrorState('file select failed'));
      }
    } catch (e) {
      emit(getErrorState(e.toString()));
    }
  }

  void removeFile(String path) {
    /// make copy of files
    var files = <File>{
      ...state.maybeMap(orElse: () => {}, fileSelected: (fileState) => {...fileState.files})
    };

    /// remove file with path [path] from the copy
    /// update the state with the copy
    files.removeWhere((e) => e.path == path);
    emit(getFileSelectedState(files));
  }
}

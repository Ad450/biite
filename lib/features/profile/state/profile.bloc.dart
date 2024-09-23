import 'package:biite/api/repositories/user.repository.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/profile/state/fetch.picture.bloc.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc(
    @Named("profile") this._descriptionFieldBloc,
    @Named("profile") this._nameFieldBloc,
    this._fetchPictureBloc,
    this._userRepository,
  ) : super(const ProfileState.initial());

  final NameFieldBloc _nameFieldBloc;

  final DescriptionFieldBloc _descriptionFieldBloc;
  final FetchPictureBloc _fetchPictureBloc;

  final UserRepository _userRepository;

  void update() async {
    emit(const ProfileState.loading());
    final name = _nameFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final description = _descriptionFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final filePath = _fetchPictureBloc.state.maybeMap(orElse: () => "", fetch: (state) => state.file.path);

    if (name.isEmpty && description.isEmpty && filePath.isEmpty) {
      emit(const ProfileState.error("fill at least one field"));

      return;
    }
    try {
      await _userRepository.updateUser(name: name, profilePic: filePath, description: description);
      emit(const ProfileState.updateProfie());
    } catch (e) {
      emit(ProfileState.error(e.toString()));
    }
  }

  void fetch() async {
    try {
      final user = await _userRepository.getUser();
      emit(ProfileState.fetch(user));
      return;
    } catch (e) {
      emit(ProfileState.error(e.toString()));
    }
  }
}

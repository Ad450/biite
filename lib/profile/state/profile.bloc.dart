import 'package:biite/profile/state/fetch.picture.bloc.dart';
import 'package:biite/profile/state/profile.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';
import 'package:user_repository/user_repository.dart';

@LazySingleton()
class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc(
    @Named("profile") this._descriptionFieldBloc,
    @Named("profile") this._nameFieldBloc,
    this._fetchPictureBloc,
  )   : _userRepository = userGetIt.get<UserRepository>(),
        super(const ProfileState.initial());

  final NameFieldBloc _nameFieldBloc;

  final DescriptionFieldBloc _descriptionFieldBloc;
  final FetchPictureBloc _fetchPictureBloc;

  final UserRepository _userRepository;

  void update() async {
    emit(const ProfileState.loading());
    final name = _nameFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final description = _descriptionFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final filePath = _fetchPictureBloc.state.maybeMap(orElse: () => "", fetch: (state) => state.file.path);

    if (name.length > 11) {
      emit(const ProfileState.error("Name too long"));
      return;
    }

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

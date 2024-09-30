import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/profile/state/profile.bloc.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ProfileBloc>();

    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
        updateProfie: (_) => showToast("profile updated!"),
      ),
      builder: (_, state) => LoadingButton(
        isLoading: state.maybeMap(orElse: () => false, loading: (_) => true),
        onTap: bloc.update,
        buttonText: "Finish",
      ),
    );
  }
}

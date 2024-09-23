import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/profile/state/fetch.picture.bloc.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileAvatar extends StatelessWidget {
  const EditProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = getIt.get<FetchPictureBloc>();
    return BlocBuilder<FetchPictureBloc, FetchPictureState>(
      bloc: bloc,
      builder: (_, state) => GestureDetector(
        onTap: bloc.fetch,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: state.maybeMap(orElse: () => ColorName.multiline, fetch: (_) => null),
              backgroundImage: state.maybeMap(orElse: () => null, fetch: (state) => FileImage(state.file)),
              child: state.maybeMap(
                orElse: () => Icon(
                  Icons.camera_enhance_outlined,
                  size: 40,
                  color: Colors.grey.withOpacity(0.4),
                ),
                fetch: (_) => null,
              ),
            ),
            Positioned(
              bottom: 4,
              right: 5,
              child: Container(
                height: 30,
                width: 20,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.camera, size: 10, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

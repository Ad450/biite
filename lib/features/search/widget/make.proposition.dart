import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/search/state/make.proposition.bloc.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:biite/features/search/widget/propisition.compensation.field.dart';
import 'package:biite/features/search/widget/proposition.description.field.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MakeProposition extends StatelessWidget {
  const MakeProposition({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BiiteBack(),
                SizedBox(height: 40.h),
                const BiiteAvatarWithText(),
                SizedBox(height: 48.h),
                Text(
                  "Make a proposition",
                  style: context.appTheme.textTheme.bodyMedium?.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.h),
                const PropositionDescriptionField(),
                SizedBox(height: 16.h),
                const PropositionCompensationField(),
                SizedBox(height: 149.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 56.h),
                  child: _PropositionButton(projectId: project.id!, ownerId: project.ownerId),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PropositionButton extends StatelessWidget {
  const _PropositionButton({
    required this.projectId,
    required this.ownerId,
    this.bidId,
    super.key,
  });

  final String? bidId;
  final String projectId;
  final String ownerId;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<PropositionBloc>();
    return BlocConsumer<PropositionBloc, PropositionState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => BiiteTextButton(
          onPressed: () => bloc.makeProposition(projectId: projectId, ownerId: ownerId),
          text: "Send",
        ),
        loading: (_) => const Center(child: CupertinoActivityIndicator()),
      ),
    );
  }
}

import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/di/biite.di.dart';
import 'package:biite/search/state/make.proposition.bloc.dart';
import 'package:biite/search/state/search.state.dart';
import 'package:biite/search/widget/propisition.compensation.field.dart';
import 'package:biite/search/widget/proposition.description.field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/presentation.dart';
import 'package:project_repository/project_repository.dart';

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
                PeerProfileAvatar(ownerId: project.ownerId),
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
                  child: _PropositionButton(projectId: project.id!),
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
    this.bidId,
    super.key,
  });

  final String? bidId;
  final String projectId;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<PropositionBloc>();
    return BlocConsumer<PropositionBloc, PropositionState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
        create: (state) => showToast("Bid made!!!"),
      ),
      builder: (_, state) => LoadingButton(
        isLoading: state.maybeMap(orElse: () => false, loading: (_) => true),
        onTap: () => bloc.makeProposition(projectId: projectId),
        buttonText: "Send",
      ),
    );
  }
}

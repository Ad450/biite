import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/search/state/fetch.proposition.count.bloc.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropositionCount extends StatelessWidget {
  const PropositionCount({required this.projectId, super.key});

  final String projectId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPropositionCountBloc, PropositionCountState>(
      bloc: getIt.get<FetchPropositionCountBloc>()..fetch(projectId),
      builder: (_, state) => Text(
        "${state.maybeMap(orElse: () => 0, fetch: (state) => state.count)} propositions",
        style: context.appTheme.textTheme.bodySmall?.copyWith(
          fontSize: 12.8,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

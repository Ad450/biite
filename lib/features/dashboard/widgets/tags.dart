import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.chip.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/dashboard/bloc/tags.bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    final tagsBloc = getIt.get<TagsBloc>();

    return BlocBuilder<TagsBloc, TagsState>(
      bloc: tagsBloc,
      builder: (_, state) => Wrap(
        spacing: 8,
        runSpacing: 8,
        direction: Axis.horizontal,
        children: ["WIREFRAME", "UI/UX", "SOFTWARE", "MARKETING", "SPORTS"]
            .map((e) => BiiteChip(
                  text: e,
                  selected: state.maybeMap(
                    orElse: () => false,
                    selected: (state) => state.tags.contains(e),
                  ),
                  onSelected: (_) => tagsBloc.selectTag(e),
                ))
            .toList(),
      ),
    );
  }
}

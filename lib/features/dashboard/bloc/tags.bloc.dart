import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagsBloc extends Cubit<TagsState> {
  TagsBloc() : super(const TagsState.initial());

  final _tags = <String>[];

  void selectTag(String tag) {
    _tags.contains(tag) ? _tags.remove(tag) : _tags.add(tag);

    emit(TagsState.selected(tags: [..._tags]));
  }
}

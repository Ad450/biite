import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TagsBloc extends Cubit<TagsState> {
  TagsBloc() : super(const TagsState.initial(tags: [], time: 0));

  final _tags = <String>[];

  void selectTag(String tag) {
    _tags.contains(tag) ? _tags.remove(tag) : _tags.add(tag);

    emit(TagsState.selected(tags: _tags, time: DateTime.now().millisecondsSinceEpoch));
    print(" this is from tags ${state.tags}");
  }
}

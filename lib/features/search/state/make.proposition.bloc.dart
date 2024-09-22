import 'package:biite/api/repositories/bid.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PropositionBloc extends Cubit<PropositionState> {
  PropositionBloc(
    @Named("bid") this._compensationFieldBloc,
    @Named("bid") this._descriptionFieldBloc,
    this._bidRepository,
  ) : super(const PropositionState.initial());

  final CompensationFieldBloc _compensationFieldBloc;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final BidRepository _bidRepository;

  void makeProposition({
    String? bidId,
    required String projectId,
    required String ownerId,
  }) async {
    emit(const PropositionState.loading());

    final description = _descriptionFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final compensation = _compensationFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);

    final param = CreateBidParam(
      bidId: bidId,
      projectId: projectId,
      ownerId: ownerId,
      description: description,
      rate: double.parse(compensation),
      tags: [],
    );

    final result = await _bidRepository.createBid(param);
    result.fold(
      (l) => emit(PropositionState.error(l.message)),
      (r) => emit(const PropositionState.create()),
    );
  }
}

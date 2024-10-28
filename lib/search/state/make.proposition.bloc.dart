import 'package:bid_repository/bid_repository.dart';
import 'package:biite/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PropositionBloc extends Cubit<PropositionState> {
  PropositionBloc(
    @Named("bid") this._compensationFieldBloc,
    @Named("bid") this._descriptionFieldBloc,
  )   : _bidRepository = bidGetIt.get<BidRepository>(),
        super(const PropositionState.initial());

  final CompensationFieldBloc _compensationFieldBloc;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final BidRepository _bidRepository;

  void makeProposition({
    String? bidId,
    required String projectId,
  }) async {
    emit(const PropositionState.loading());

    final description = _descriptionFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    final compensation = _compensationFieldBloc.state.maybeMap(orElse: () => "", valid: (state) => state.data);

    if (description.isEmpty || compensation.isEmpty) {
      if (description.isEmpty) emit(const PropositionState.error("compensation is required"));
      if (compensation.isEmpty) emit(const PropositionState.error("compensation is required"));

      return;
    }
    _clearFields();

    final param = CreateBidParam(
      bidId: bidId,
      projectId: projectId,
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

  void _clearFields() {
    _compensationFieldBloc.compensationController.clear();
    _descriptionFieldBloc.descriptionController.clear();
  }
}

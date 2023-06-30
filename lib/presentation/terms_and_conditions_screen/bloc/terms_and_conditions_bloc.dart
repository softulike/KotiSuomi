import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/terms_and_conditions_screen/models/terms_and_conditions_model.dart';
part 'terms_and_conditions_event.dart';
part 'terms_and_conditions_state.dart';

class TermsAndConditionsBloc
    extends Bloc<TermsAndConditionsEvent, TermsAndConditionsState> {
  TermsAndConditionsBloc(TermsAndConditionsState initialState)
      : super(initialState) {
    on<TermsAndConditionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermsAndConditionsInitialEvent event,
    Emitter<TermsAndConditionsState> emit,
  ) async {}
}

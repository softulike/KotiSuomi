import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/store_credits_screen/models/store_credits_model.dart';
part 'store_credits_event.dart';
part 'store_credits_state.dart';

class StoreCreditsBloc extends Bloc<StoreCreditsEvent, StoreCreditsState> {
  StoreCreditsBloc(StoreCreditsState initialState) : super(initialState) {
    on<StoreCreditsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StoreCreditsInitialEvent event,
    Emitter<StoreCreditsState> emit,
  ) async {}
}

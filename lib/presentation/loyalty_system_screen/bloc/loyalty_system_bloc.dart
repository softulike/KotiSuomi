import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/loyalty_system_screen/models/loyalty_system_model.dart';
part 'loyalty_system_event.dart';
part 'loyalty_system_state.dart';

class LoyaltySystemBloc extends Bloc<LoyaltySystemEvent, LoyaltySystemState> {
  LoyaltySystemBloc(LoyaltySystemState initialState) : super(initialState) {
    on<LoyaltySystemInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoyaltySystemInitialEvent event,
    Emitter<LoyaltySystemState> emit,
  ) async {}
}

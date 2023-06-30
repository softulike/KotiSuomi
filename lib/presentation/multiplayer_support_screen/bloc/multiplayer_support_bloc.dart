import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/multiplayer_support_screen/models/multiplayer_support_model.dart';
part 'multiplayer_support_event.dart';
part 'multiplayer_support_state.dart';

class MultiplayerSupportBloc
    extends Bloc<MultiplayerSupportEvent, MultiplayerSupportState> {
  MultiplayerSupportBloc(MultiplayerSupportState initialState)
      : super(initialState) {
    on<MultiplayerSupportInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MultiplayerSupportInitialEvent event,
    Emitter<MultiplayerSupportState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/shipping_address_validation_screen/models/shipping_address_validation_model.dart';
part 'shipping_address_validation_event.dart';
part 'shipping_address_validation_state.dart';

class ShippingAddressValidationBloc extends Bloc<ShippingAddressValidationEvent,
    ShippingAddressValidationState> {
  ShippingAddressValidationBloc(ShippingAddressValidationState initialState)
      : super(initialState) {
    on<ShippingAddressValidationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShippingAddressValidationInitialEvent event,
    Emitter<ShippingAddressValidationState> emit,
  ) async {
    emit(state.copyWith(
        inputFieldController: TextEditingController(),
        inputFieldOneController: TextEditingController(),
        inputFieldTwoController: TextEditingController(),
        inputFieldThreeController: TextEditingController(),
        inputFieldFourController: TextEditingController(),
        inputFieldFiveController: TextEditingController()));
  }
}

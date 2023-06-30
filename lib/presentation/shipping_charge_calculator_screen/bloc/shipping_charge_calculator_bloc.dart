import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/shipping_charge_calculator_screen/models/shipping_charge_calculator_model.dart';
part 'shipping_charge_calculator_event.dart';
part 'shipping_charge_calculator_state.dart';

class ShippingChargeCalculatorBloc
    extends Bloc<ShippingChargeCalculatorEvent, ShippingChargeCalculatorState> {
  ShippingChargeCalculatorBloc(ShippingChargeCalculatorState initialState)
      : super(initialState) {
    on<ShippingChargeCalculatorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShippingChargeCalculatorInitialEvent event,
    Emitter<ShippingChargeCalculatorState> emit,
  ) async {
    emit(state.copyWith(
        zipcodeController: TextEditingController(),
        zipcodeOneController: TextEditingController(),
        weightOneController: TextEditingController(),
        group1013Controller: TextEditingController()));
  }
}

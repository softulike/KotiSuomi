// ignore_for_file: must_be_immutable

part of 'shipping_charge_calculator_bloc.dart';

class ShippingChargeCalculatorState extends Equatable {
  ShippingChargeCalculatorState({
    this.zipcodeController,
    this.zipcodeOneController,
    this.weightOneController,
    this.group1013Controller,
    this.shippingChargeCalculatorModelObj,
  });

  TextEditingController? zipcodeController;

  TextEditingController? zipcodeOneController;

  TextEditingController? weightOneController;

  TextEditingController? group1013Controller;

  ShippingChargeCalculatorModel? shippingChargeCalculatorModelObj;

  @override
  List<Object?> get props => [
        zipcodeController,
        zipcodeOneController,
        weightOneController,
        group1013Controller,
        shippingChargeCalculatorModelObj,
      ];
  ShippingChargeCalculatorState copyWith({
    TextEditingController? zipcodeController,
    TextEditingController? zipcodeOneController,
    TextEditingController? weightOneController,
    TextEditingController? group1013Controller,
    ShippingChargeCalculatorModel? shippingChargeCalculatorModelObj,
  }) {
    return ShippingChargeCalculatorState(
      zipcodeController: zipcodeController ?? this.zipcodeController,
      zipcodeOneController: zipcodeOneController ?? this.zipcodeOneController,
      weightOneController: weightOneController ?? this.weightOneController,
      group1013Controller: group1013Controller ?? this.group1013Controller,
      shippingChargeCalculatorModelObj: shippingChargeCalculatorModelObj ??
          this.shippingChargeCalculatorModelObj,
    );
  }
}

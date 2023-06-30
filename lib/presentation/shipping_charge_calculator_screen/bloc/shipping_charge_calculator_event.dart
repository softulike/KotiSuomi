// ignore_for_file: must_be_immutable

part of 'shipping_charge_calculator_bloc.dart';

@immutable
abstract class ShippingChargeCalculatorEvent extends Equatable {}

class ShippingChargeCalculatorInitialEvent
    extends ShippingChargeCalculatorEvent {
  @override
  List<Object?> get props => [];
}

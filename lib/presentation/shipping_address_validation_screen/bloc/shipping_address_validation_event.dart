// ignore_for_file: must_be_immutable

part of 'shipping_address_validation_bloc.dart';

@immutable
abstract class ShippingAddressValidationEvent extends Equatable {}

class ShippingAddressValidationInitialEvent
    extends ShippingAddressValidationEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'shipping_address_validation_bloc.dart';

class ShippingAddressValidationState extends Equatable {
  ShippingAddressValidationState({
    this.inputFieldController,
    this.inputFieldOneController,
    this.inputFieldTwoController,
    this.inputFieldThreeController,
    this.inputFieldFourController,
    this.inputFieldFiveController,
    this.shippingAddressValidationModelObj,
  });

  TextEditingController? inputFieldController;

  TextEditingController? inputFieldOneController;

  TextEditingController? inputFieldTwoController;

  TextEditingController? inputFieldThreeController;

  TextEditingController? inputFieldFourController;

  TextEditingController? inputFieldFiveController;

  ShippingAddressValidationModel? shippingAddressValidationModelObj;

  @override
  List<Object?> get props => [
        inputFieldController,
        inputFieldOneController,
        inputFieldTwoController,
        inputFieldThreeController,
        inputFieldFourController,
        inputFieldFiveController,
        shippingAddressValidationModelObj,
      ];
  ShippingAddressValidationState copyWith({
    TextEditingController? inputFieldController,
    TextEditingController? inputFieldOneController,
    TextEditingController? inputFieldTwoController,
    TextEditingController? inputFieldThreeController,
    TextEditingController? inputFieldFourController,
    TextEditingController? inputFieldFiveController,
    ShippingAddressValidationModel? shippingAddressValidationModelObj,
  }) {
    return ShippingAddressValidationState(
      inputFieldController: inputFieldController ?? this.inputFieldController,
      inputFieldOneController:
          inputFieldOneController ?? this.inputFieldOneController,
      inputFieldTwoController:
          inputFieldTwoController ?? this.inputFieldTwoController,
      inputFieldThreeController:
          inputFieldThreeController ?? this.inputFieldThreeController,
      inputFieldFourController:
          inputFieldFourController ?? this.inputFieldFourController,
      inputFieldFiveController:
          inputFieldFiveController ?? this.inputFieldFiveController,
      shippingAddressValidationModelObj: shippingAddressValidationModelObj ??
          this.shippingAddressValidationModelObj,
    );
  }
}

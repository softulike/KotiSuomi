// ignore_for_file: must_be_immutable

part of 'guest_login_bloc.dart';

class GuestLoginState extends Equatable {
  GuestLoginState({
    this.inputFieldController,
    this.inputFieldOneController,
    this.isShowPassword = true,
    this.guestLoginModelObj,
  });

  TextEditingController? inputFieldController;

  TextEditingController? inputFieldOneController;

  GuestLoginModel? guestLoginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        inputFieldController,
        inputFieldOneController,
        isShowPassword,
        guestLoginModelObj,
      ];
  GuestLoginState copyWith({
    TextEditingController? inputFieldController,
    TextEditingController? inputFieldOneController,
    bool? isShowPassword,
    GuestLoginModel? guestLoginModelObj,
  }) {
    return GuestLoginState(
      inputFieldController: inputFieldController ?? this.inputFieldController,
      inputFieldOneController:
          inputFieldOneController ?? this.inputFieldOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      guestLoginModelObj: guestLoginModelObj ?? this.guestLoginModelObj,
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/signup_login_module_screen/models/signup_login_module_model.dart';
part 'signup_login_module_event.dart';
part 'signup_login_module_state.dart';

class SignupLoginModuleBloc
    extends Bloc<SignupLoginModuleEvent, SignupLoginModuleState> {
  SignupLoginModuleBloc(SignupLoginModuleState initialState)
      : super(initialState) {
    on<SignupLoginModuleInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _onInitialize(
    SignupLoginModuleInitialEvent event,
    Emitter<SignupLoginModuleState> emit,
  ) async {
    emit(state.copyWith(
        group10198Controller: TextEditingController(),
        group10198OneController: TextEditingController(),
        isShowPassword: true,
        isCheckbox: false));
  }
}

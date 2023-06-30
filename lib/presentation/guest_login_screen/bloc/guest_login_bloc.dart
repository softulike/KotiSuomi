import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/guest_login_screen/models/guest_login_model.dart';
part 'guest_login_event.dart';
part 'guest_login_state.dart';

class GuestLoginBloc extends Bloc<GuestLoginEvent, GuestLoginState> {
  GuestLoginBloc(GuestLoginState initialState) : super(initialState) {
    on<GuestLoginInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<GuestLoginState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    GuestLoginInitialEvent event,
    Emitter<GuestLoginState> emit,
  ) async {
    emit(state.copyWith(
        inputFieldController: TextEditingController(),
        inputFieldOneController: TextEditingController(),
        isShowPassword: true));
  }
}

// ignore_for_file: must_be_immutable

part of 'guest_login_bloc.dart';

@immutable
abstract class GuestLoginEvent extends Equatable {}

class GuestLoginInitialEvent extends GuestLoginEvent {
  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends GuestLoginEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

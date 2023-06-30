// ignore_for_file: must_be_immutable

part of 'multiplayer_support_bloc.dart';

@immutable
abstract class MultiplayerSupportEvent extends Equatable {}

class MultiplayerSupportInitialEvent extends MultiplayerSupportEvent {
  @override
  List<Object?> get props => [];
}

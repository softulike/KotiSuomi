// ignore_for_file: must_be_immutable

part of 'multiplayer_support_bloc.dart';

class MultiplayerSupportState extends Equatable {
  MultiplayerSupportState({this.multiplayerSupportModelObj});

  MultiplayerSupportModel? multiplayerSupportModelObj;

  @override
  List<Object?> get props => [
        multiplayerSupportModelObj,
      ];
  MultiplayerSupportState copyWith(
      {MultiplayerSupportModel? multiplayerSupportModelObj}) {
    return MultiplayerSupportState(
      multiplayerSupportModelObj:
          multiplayerSupportModelObj ?? this.multiplayerSupportModelObj,
    );
  }
}

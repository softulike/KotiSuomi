// ignore_for_file: must_be_immutable

part of 'store_credits_bloc.dart';

class StoreCreditsState extends Equatable {
  StoreCreditsState({this.storeCreditsModelObj});

  StoreCreditsModel? storeCreditsModelObj;

  @override
  List<Object?> get props => [
        storeCreditsModelObj,
      ];
  StoreCreditsState copyWith({StoreCreditsModel? storeCreditsModelObj}) {
    return StoreCreditsState(
      storeCreditsModelObj: storeCreditsModelObj ?? this.storeCreditsModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'loyalty_system_bloc.dart';

class LoyaltySystemState extends Equatable {
  LoyaltySystemState({this.loyaltySystemModelObj});

  LoyaltySystemModel? loyaltySystemModelObj;

  @override
  List<Object?> get props => [
        loyaltySystemModelObj,
      ];
  LoyaltySystemState copyWith({LoyaltySystemModel? loyaltySystemModelObj}) {
    return LoyaltySystemState(
      loyaltySystemModelObj:
          loyaltySystemModelObj ?? this.loyaltySystemModelObj,
    );
  }
}

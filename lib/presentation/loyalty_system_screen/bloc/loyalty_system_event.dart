// ignore_for_file: must_be_immutable

part of 'loyalty_system_bloc.dart';

@immutable
abstract class LoyaltySystemEvent extends Equatable {}

class LoyaltySystemInitialEvent extends LoyaltySystemEvent {
  @override
  List<Object?> get props => [];
}

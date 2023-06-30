// ignore_for_file: must_be_immutable

part of 'store_credits_bloc.dart';

@immutable
abstract class StoreCreditsEvent extends Equatable {}

class StoreCreditsInitialEvent extends StoreCreditsEvent {
  @override
  List<Object?> get props => [];
}

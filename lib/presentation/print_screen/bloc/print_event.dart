// ignore_for_file: must_be_immutable

part of 'print_bloc.dart';

@immutable
abstract class PrintEvent extends Equatable {}

class PrintInitialEvent extends PrintEvent {
  @override
  List<Object?> get props => [];
}

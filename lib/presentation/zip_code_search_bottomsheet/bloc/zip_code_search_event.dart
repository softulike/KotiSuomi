// ignore_for_file: must_be_immutable

part of 'zip_code_search_bloc.dart';

@immutable
abstract class ZipCodeSearchEvent extends Equatable {}

class ZipCodeSearchInitialEvent extends ZipCodeSearchEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'product_quickview_bloc.dart';

@immutable
abstract class ProductQuickviewEvent extends Equatable {}

class ProductQuickviewInitialEvent extends ProductQuickviewEvent {
  @override
  List<Object?> get props => [];
}

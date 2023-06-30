// ignore_for_file: must_be_immutable

part of 'shopping_cart_bloc.dart';

@immutable
abstract class ShoppingCartEvent extends Equatable {}

class ShoppingCartInitialEvent extends ShoppingCartEvent {
  @override
  List<Object?> get props => [];
}

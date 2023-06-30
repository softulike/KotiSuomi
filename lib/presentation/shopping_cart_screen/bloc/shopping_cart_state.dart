// ignore_for_file: must_be_immutable

part of 'shopping_cart_bloc.dart';

class ShoppingCartState extends Equatable {
  ShoppingCartState({this.shoppingCartModelObj});

  ShoppingCartModel? shoppingCartModelObj;

  @override
  List<Object?> get props => [
        shoppingCartModelObj,
      ];
  ShoppingCartState copyWith({ShoppingCartModel? shoppingCartModelObj}) {
    return ShoppingCartState(
      shoppingCartModelObj: shoppingCartModelObj ?? this.shoppingCartModelObj,
    );
  }
}

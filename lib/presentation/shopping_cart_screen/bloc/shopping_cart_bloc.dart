import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/shopping_cart_screen/models/shopping_cart_model.dart';
part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc(ShoppingCartState initialState) : super(initialState) {
    on<ShoppingCartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingCartInitialEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/wishlist_screen/models/wishlist_model.dart';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc(WishlistState initialState) : super(initialState) {
    on<WishlistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishlistInitialEvent event,
    Emitter<WishlistState> emit,
  ) async {}
}

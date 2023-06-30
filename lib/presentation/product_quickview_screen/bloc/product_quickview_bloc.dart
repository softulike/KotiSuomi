import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/product_quickview_screen/models/product_quickview_model.dart';
part 'product_quickview_event.dart';
part 'product_quickview_state.dart';

class ProductQuickviewBloc
    extends Bloc<ProductQuickviewEvent, ProductQuickviewState> {
  ProductQuickviewBloc(ProductQuickviewState initialState)
      : super(initialState) {
    on<ProductQuickviewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductQuickviewInitialEvent event,
    Emitter<ProductQuickviewState> emit,
  ) async {}
}

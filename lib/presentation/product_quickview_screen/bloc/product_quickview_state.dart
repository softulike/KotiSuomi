// ignore_for_file: must_be_immutable

part of 'product_quickview_bloc.dart';

class ProductQuickviewState extends Equatable {
  ProductQuickviewState({this.productQuickviewModelObj});

  ProductQuickviewModel? productQuickviewModelObj;

  @override
  List<Object?> get props => [
        productQuickviewModelObj,
      ];
  ProductQuickviewState copyWith(
      {ProductQuickviewModel? productQuickviewModelObj}) {
    return ProductQuickviewState(
      productQuickviewModelObj:
          productQuickviewModelObj ?? this.productQuickviewModelObj,
    );
  }
}

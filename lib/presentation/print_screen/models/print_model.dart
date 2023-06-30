import 'package:equatable/equatable.dart';
import 'print_item_model.dart';

// ignore: must_be_immutable
class PrintModel extends Equatable {
  PrintModel({this.printItemList = const []});

  List<PrintItemModel> printItemList;

  PrintModel copyWith({List<PrintItemModel>? printItemList}) {
    return PrintModel(
      printItemList: printItemList ?? this.printItemList,
    );
  }

  @override
  List<Object?> get props => [printItemList];
}

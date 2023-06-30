import 'package:equatable/equatable.dart';
import 'savedcards_item_model.dart';

// ignore: must_be_immutable
class SavedCardsModel extends Equatable {
  SavedCardsModel({this.savedcardsItemList = const []});

  List<SavedcardsItemModel> savedcardsItemList;

  SavedCardsModel copyWith({List<SavedcardsItemModel>? savedcardsItemList}) {
    return SavedCardsModel(
      savedcardsItemList: savedcardsItemList ?? this.savedcardsItemList,
    );
  }

  @override
  List<Object?> get props => [savedcardsItemList];
}

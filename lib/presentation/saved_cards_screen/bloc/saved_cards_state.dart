// ignore_for_file: must_be_immutable

part of 'saved_cards_bloc.dart';

class SavedCardsState extends Equatable {
  SavedCardsState({this.savedCardsModelObj});

  SavedCardsModel? savedCardsModelObj;

  @override
  List<Object?> get props => [
        savedCardsModelObj,
      ];
  SavedCardsState copyWith({SavedCardsModel? savedCardsModelObj}) {
    return SavedCardsState(
      savedCardsModelObj: savedCardsModelObj ?? this.savedCardsModelObj,
    );
  }
}

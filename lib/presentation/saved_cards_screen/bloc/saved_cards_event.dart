// ignore_for_file: must_be_immutable

part of 'saved_cards_bloc.dart';

@immutable
abstract class SavedCardsEvent extends Equatable {}

class SavedCardsInitialEvent extends SavedCardsEvent {
  @override
  List<Object?> get props => [];
}

class SavedcardsItemEvent extends SavedCardsEvent {
  SavedcardsItemEvent({
    required this.index,
    this.isCheckbox,
  });

  int index;

  bool? isCheckbox;

  @override
  List<Object?> get props => [
        index,
        isCheckbox,
      ];
}

import '../models/savedcards_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/savedcards_item_model.dart';
import 'package:ral_s_application1/presentation/saved_cards_screen/models/saved_cards_model.dart';
part 'saved_cards_event.dart';
part 'saved_cards_state.dart';

class SavedCardsBloc extends Bloc<SavedCardsEvent, SavedCardsState> {
  SavedCardsBloc(SavedCardsState initialState) : super(initialState) {
    on<SavedCardsInitialEvent>(_onInitialize);
    on<SavedcardsItemEvent>(_savedcardsItem);
  }

  _onInitialize(
    SavedCardsInitialEvent event,
    Emitter<SavedCardsState> emit,
  ) async {
    emit(state.copyWith(
        savedCardsModelObj: state.savedCardsModelObj
            ?.copyWith(savedcardsItemList: fillSavedcardsItemList())));
  }

  _savedcardsItem(
    SavedcardsItemEvent event,
    Emitter<SavedCardsState> emit,
  ) {
    List<SavedcardsItemModel> newList = List<SavedcardsItemModel>.from(
        state.savedCardsModelObj!.savedcardsItemList);
    newList[event.index] =
        newList[event.index].copyWith(isCheckbox: event.isCheckbox);
    emit(state.copyWith(
        savedCardsModelObj:
            state.savedCardsModelObj?.copyWith(savedcardsItemList: newList)));
  }

  List<SavedcardsItemModel> fillSavedcardsItemList() {
    return List.generate(2, (index) => SavedcardsItemModel());
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_item_model.dart';
import 'package:ral_s_application1/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<SearchItemModel> fillSearchItemList() {
    return List.generate(5, (index) => SearchItemModel());
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(inputFieldController: TextEditingController()));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj
            ?.copyWith(searchItemList: fillSearchItemList())));
  }
}

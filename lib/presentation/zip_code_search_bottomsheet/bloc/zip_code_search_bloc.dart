import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ral_s_application1/presentation/zip_code_search_bottomsheet/models/zip_code_search_model.dart';
part 'zip_code_search_event.dart';
part 'zip_code_search_state.dart';

class ZipCodeSearchBloc extends Bloc<ZipCodeSearchEvent, ZipCodeSearchState> {
  ZipCodeSearchBloc(ZipCodeSearchState initialState) : super(initialState) {
    on<ZipCodeSearchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ZipCodeSearchInitialEvent event,
    Emitter<ZipCodeSearchState> emit,
  ) async {
    emit(state.copyWith(
      frame9820Controller: TextEditingController(),
    ));
  }
}

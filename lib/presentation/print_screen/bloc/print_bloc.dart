import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/print_item_model.dart';
import 'package:ral_s_application1/presentation/print_screen/models/print_model.dart';
part 'print_event.dart';
part 'print_state.dart';

class PrintBloc extends Bloc<PrintEvent, PrintState> {
  PrintBloc(PrintState initialState) : super(initialState) {
    on<PrintInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PrintInitialEvent event,
    Emitter<PrintState> emit,
  ) async {
    emit(state.copyWith(
        printModelObj:
            state.printModelObj?.copyWith(printItemList: fillPrintItemList())));
  }

  List<PrintItemModel> fillPrintItemList() {
    return List.generate(5, (index) => PrintItemModel());
  }
}

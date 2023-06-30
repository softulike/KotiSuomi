// ignore_for_file: must_be_immutable

part of 'print_bloc.dart';

class PrintState extends Equatable {
  PrintState({this.printModelObj});

  PrintModel? printModelObj;

  @override
  List<Object?> get props => [
        printModelObj,
      ];
  PrintState copyWith({PrintModel? printModelObj}) {
    return PrintState(
      printModelObj: printModelObj ?? this.printModelObj,
    );
  }
}

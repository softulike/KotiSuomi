// ignore_for_file: must_be_immutable

part of 'zip_code_search_bloc.dart';

class ZipCodeSearchState extends Equatable {
  ZipCodeSearchState({
    this.frame9820Controller,
    this.zipCodeSearchModelObj,
  });

  TextEditingController? frame9820Controller;

  ZipCodeSearchModel? zipCodeSearchModelObj;

  @override
  List<Object?> get props => [
        frame9820Controller,
        zipCodeSearchModelObj,
      ];
  ZipCodeSearchState copyWith({
    TextEditingController? frame9820Controller,
    ZipCodeSearchModel? zipCodeSearchModelObj,
  }) {
    return ZipCodeSearchState(
      frame9820Controller: frame9820Controller ?? this.frame9820Controller,
      zipCodeSearchModelObj:
          zipCodeSearchModelObj ?? this.zipCodeSearchModelObj,
    );
  }
}

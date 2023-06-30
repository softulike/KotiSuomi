// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

class SearchState extends Equatable {
  SearchState({
    this.inputFieldController,
    this.searchModelObj,
  });

  TextEditingController? inputFieldController;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        inputFieldController,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? inputFieldController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      inputFieldController: inputFieldController ?? this.inputFieldController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SavedcardsItemModel extends Equatable {
  SavedcardsItemModel({this.isCheckbox = false, this.id});

  bool isCheckbox;

  String? id;

  SavedcardsItemModel copyWith({bool? isCheckbox, String? id}) {
    return SavedcardsItemModel(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [isCheckbox, id];
}

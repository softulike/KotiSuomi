// ignore_for_file: must_be_immutable

part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent extends Equatable {}

class WishlistInitialEvent extends WishlistEvent {
  @override
  List<Object?> get props => [];
}

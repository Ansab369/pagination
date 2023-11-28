part of 'pagination_bloc.dart';

@immutable
sealed class PaginationState {}

abstract class PaginationActionState extends PaginationState {}

// normal state
// action state
class PaginationInitial extends PaginationActionState {
final int newIndex;

  PaginationInitial(this.newIndex);
 
}
class PaginationInitialPageState extends PaginationActionState {

  final int newIndex;

  PaginationInitialPageState(this.newIndex);
}


class ChangePaginationPageState extends PaginationActionState {
  final int newIndex;
  // final bool isActiveButton;

  ChangePaginationPageState(this.newIndex );
}

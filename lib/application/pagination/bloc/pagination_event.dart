part of 'pagination_bloc.dart';

@immutable
sealed class PaginationEvent {}


//! initial

class PaginationInitialEvent extends PaginationEvent {

}

class ChangePaginationForwardButtonClickedEvent extends PaginationEvent {}

class ChangePaginationBackwardButtonClickedEvent extends PaginationEvent {}

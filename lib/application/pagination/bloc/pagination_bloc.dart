import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pagination/constants/data.dart';

part 'pagination_event.dart';
part 'pagination_state.dart';

class PaginationBloc extends Bloc<PaginationEvent, PaginationState> {
  PaginationBloc() : super(PaginationInitial(0)) {
    on<PaginationInitialEvent>(initialSvg);
    on<ChangePaginationForwardButtonClickedEvent>(forwardButtonPressed);
    on<ChangePaginationBackwardButtonClickedEvent>(backwardButtonPressed);
  }
  //
  int _currentIndex = 0;

  void initialSvg(event, emit)  {
    log(_currentIndex.toString());
    emit(ChangePaginationPageState(_currentIndex));
  }

  void forwardButtonPressed(event, emit)  {
    log(_currentIndex.toString());
    _currentIndex = (_currentIndex + 1) % svgImageUrls.length;
    emit(ChangePaginationPageState(_currentIndex));
  }

  void backwardButtonPressed(event, emit)  {
    _currentIndex = (_currentIndex - 1) % svgImageUrls.length;
    emit(ChangePaginationPageState(_currentIndex));
  }
}

//

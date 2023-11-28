import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pagination/domain/failures/main_failures.dart';
import 'package:pagination/domain/i_country_repo.dart';
import 'package:pagination/domain/model/country.dart';

part 'counter_info_event.dart';
part 'counter_info_state.dart';
part 'counter_info_bloc.freezed.dart';

class CounterInfoBloc extends Bloc<CounterInfoEvent, CounterInfoState> {
  final ICountryRepo iCountryRepo;
  CounterInfoBloc(this.iCountryRepo) : super(CounterInfoState.initial()) {
    on<_GetCountryInfo>((event, emit) async {
    log("---------------------------------- LOG 1");
    log("==============================================");

      emit(
        state.copyWith(isLoading: true, dataFailureOrSuccessOption: none()),
      );
    log("---------------------------------- LOG 1");

      final _result = await iCountryRepo.getCountryInfo();
      log(_result.toString());
      //
      final _state = _result.fold((l) {
        return CounterInfoState(
          isLoading: false,
          data: [],
          dataFailureOrSuccessOption: some(left(l)),
          isError: true,
        );
      }, (r) {
        return CounterInfoState(
            isLoading: false,
            isError: false,
            data: r,
            dataFailureOrSuccessOption: some(right(r)));
      });
      log(_state.toString());
      emit(_state);
    });
  }
}

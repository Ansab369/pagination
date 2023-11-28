part of 'counter_info_bloc.dart';

@freezed
class CounterInfoState with _$CounterInfoState {

const factory CounterInfoState({
  required bool isLoading,
    required bool isError,
    required List<Country> data,
    required Option<Either<MainFailure, List<Country>>> dataFailureOrSuccessOption,


})=_CounterInfoState;

  
   factory CounterInfoState.initial() {
    return CounterInfoState(isLoading: false, isError: false, data: [], dataFailureOrSuccessOption: none(),);
  }
}

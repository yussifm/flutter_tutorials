import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(currentState: 0));

  void incremnet() => emit(CounterState(currentState: state.currentState + 1, wasinCrement: true));
  void decrement() => emit(CounterState(currentState: state.currentState - 1, wasinCrement: false));
}

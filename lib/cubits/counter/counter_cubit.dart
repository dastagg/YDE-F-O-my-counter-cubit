import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment() {
    final newState = state.copyWith(counter: state.counter + 1);
    emit(newState);
  }

  // Simple version:
  void decrement() {
    final newState = state.copyWith(counter: state.counter - 1);
    emit(newState);
  }
}

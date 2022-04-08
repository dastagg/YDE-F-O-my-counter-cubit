part of 'counter_cubit.dart';

// Steps done in this file:

// Deleted the original abstract class and replaced with
// current class
// added final int counter
// used generator to create Constructor, equatable, toString and copyWith.
// created factory contructor to return the instance.

class CounterState extends Equatable {
  final int counter;
  CounterState({
    required this.counter,
  });

  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() => 'CounterState(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}

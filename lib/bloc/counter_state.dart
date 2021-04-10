part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  int count;
}

class CounterInitial extends CounterState {
  final int count;
  CounterInitial(this.count);
}

class CounterChange extends CounterState {
  final int count;
  CounterChange(this.count);
}

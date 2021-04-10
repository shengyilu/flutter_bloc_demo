import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(int initValue) : super(CounterInitial(initValue));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is CounterEventIncrement) {
      print("CounterEventIncrement:" + state.count.toString());
      yield CounterChange(state.count + 1);
    }

    if (event is CounterEventDecrement) {
      print("CounterEventDecrement:" + state.count.toString());
      yield CounterChange(state.count - 1);
    }
  }
}

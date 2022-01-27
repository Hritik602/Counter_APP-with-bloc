import 'package:bloc/bloc.dart';
import 'package:counter_app/bloc/counter_state.dart';

class CounterBloc extends Cubit<CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0));
  void increment() => emit(CounterState(counterValue: state.counterValue! + 1));
}

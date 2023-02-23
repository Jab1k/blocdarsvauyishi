import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_state.dart';

class CounterCubit extends Cubit<MainState> {
  CounterCubit() : super(MainState());

  void increment() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void decrement() {
    emit(state.copyWith(counter: state.counter - 1));
  }

  void addName(String name) {
    emit(state.copyWith(name: name));
  }
}

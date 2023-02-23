import 'package:blockdars/bloc/uyiwiuchun.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Uyiwicupit extends Cubit<Uyiwiuchun> {
  Uyiwicupit() : super(Uyiwiuchun());

  void showtextfromfeild(String name) {
    emit(state.copyWith(name: name));
  }
}

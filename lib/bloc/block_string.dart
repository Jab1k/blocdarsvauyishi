
import 'package:flutter_bloc/flutter_bloc.dart';

class StringCubit extends Cubit<String> {
  StringCubit() : super('');
  void showstring(String name) {
    emit(name);
  }
}
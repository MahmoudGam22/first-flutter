import 'package:bloc/bloc.dart';
import 'package:firstproject/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<Counterstates> {
  CounterCubit() : super(Counterintialstate());
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 1;
  void minus() {
    counter--;
    emit(Counterminusstate(counter));
  }

  void plus() {
    counter++;
    emit(Counterplusstate(counter));
  }
}

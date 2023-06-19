import 'package:firstproject/modules/counter/counter_screen.dart';
import 'package:firstproject/shared/block_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
 Bloc.observer=MyBlocObserver();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counterscreen(),
    );
  }

}
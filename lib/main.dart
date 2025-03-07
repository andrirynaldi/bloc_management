import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/counter.dart';
import 'package:my_app/home.dart';
import 'package:my_app/other.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Counter myCounter = Counter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider.value(
              value: myCounter,
              child: MyHomePage(),
            ),
        '/other': (context) => BlocProvider.value(
              value: myCounter,
              child: OtherPage(),
            ),
      },
    );
  }
}

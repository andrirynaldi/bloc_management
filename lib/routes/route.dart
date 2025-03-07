import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/counter.dart';
import 'package:my_app/home.dart';
import 'package:my_app/notFound.dart';
import 'package:my_app/other.dart';

class MyRoute {
  final Counter myCounter = Counter();
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: myCounter, child: MyHomePage()));
      case '/other':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: myCounter, child: OtherPage()));
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}

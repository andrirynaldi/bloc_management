import 'package:flutter/material.dart';
import 'package:my_app/routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MyRoute myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: myRoute.onRoute,
    );
  }
}

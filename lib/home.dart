import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/counter.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc Consumer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<Counter, int>(
            bloc: counter,
            builder: (context, state) {
              return Text(
                "$state",
                style: TextStyle(fontSize: 30),
              );
            },
            buildWhen: (previous, current) {
              if (current >= 10) {
                return true;
              } else {
                return false;
              }
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Counter: $state"),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current == 15) {
                return true;
              } else {
                return false;
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: Text("Increment")),
              ElevatedButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: Text("Decrement")),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/counter.dart';

class CounterCenterWidget extends StatelessWidget {
  const CounterCenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder(
          bloc: BlocProvider.of<Counter>(context),
          builder: (context, state) {
            return Text(
              "$state",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/bloc/counterCenter_widget.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: CounterCenterWidget(),
    );
  }
}

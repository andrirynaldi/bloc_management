import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/counter.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Center(
        child: BlocBuilder<Counter, int>(
          bloc: counter,
          builder: (context, state) {
            return Text(
              '$state',
              style: TextStyle(
                fontSize: 50,
              ),
            );
          },
        ),
      ),
    );
  }
}

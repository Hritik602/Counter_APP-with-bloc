import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterBloc>(context).increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              state.counterValue.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 43),
            );
          },
        ),
      ),
    );
  }
}

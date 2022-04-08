import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/counter/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Counter Cubit',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Version 1: Use BlocProvider.of in Text widget and FAB's.
    return Scaffold(
      body: Center(
        child: Text(
          // Opposite of Provider, listen must be set to "true" in order to read
          // the current state.
          '${BlocProvider.of<CounterCubit>(context, listen: true).state.counter}',
          style: const TextStyle(
            fontSize: 52.0,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Opposite of Provider, default is false so this will update
              // the current state.
              BlocProvider.of<CounterCubit>(context).increment();
            },
            child: const Icon(Icons.add),
            heroTag: 'increment',
          ),
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              // Opposite of Provider, default is false so this will update
              // the current state.
              BlocProvider.of<CounterCubit>(context).decrement();
            },
            child: const Icon(Icons.remove),
            heroTag: 'decrement',
          ),
        ],
      ),
    );
  }
}

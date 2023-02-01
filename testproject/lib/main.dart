import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Maincubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Счетчик на Cubit e'),),
      body: Center(child:
          BlocBuilder<Maincubit, InitialStates>(builder: (context, state) {
        return Text(
          '${state.count}',
          style:const TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
        );
      })),
      floatingActionButton: Row(
        children: [
          Expanded(
              child: FloatingActionButton(
            onPressed: () {
              BlocProvider.of<Maincubit>(context).dicrement();
            },
            child: const Icon(Icons.remove_outlined),
          )),
          Expanded(
              child: FloatingActionButton(
            onPressed: () {
              BlocProvider.of<Maincubit>(context).increment();
            },
            child: const Icon(Icons.add),
          )),
        ],
      ),
    );
  }
}

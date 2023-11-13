import 'package:bloc_app_practice/Home.dart';
import 'package:bloc_app_practice/bloc/internet/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => internetBloc(),
      child: const MaterialApp(
        title: 'Bloc app testing',
        home: Home(),
      ),
    );
  }
}

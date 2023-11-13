import 'package:bloc_app_practice/bloc/internet/internet_bloc.dart';
import 'package:bloc_app_practice/bloc/internet/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc Test App",
        ),
      ),
      body: Center(
        child: BlocBuilder<internetBloc, internetState>(
          builder: (context, state) {
            if (state is internetOnState) {
              return const Text('Internet Connected.');
            } else if (state is internetOffState) {
              return const Text('Internet Disconnected');
            } else {
              return const Text('Loading...');
            }
          },
        ),
      ),
    );
  }
}

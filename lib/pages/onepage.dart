import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bloc_cupit.dart';
import '../bloc/bloc_state.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key, BuildContext? context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, MainState>(
              buildWhen: (prev, current) {
                return current.counter != prev.counter;
              },
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            BlocBuilder<CounterCubit, MainState>(
              buildWhen: (prev, current) {
                return current.name != prev.name;
              },
              builder: (context, state) {
                return Text(
                  state.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/block_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TextEditingController controller = TextEditingController();

    // ignore: unused_local_variable
    bool ishide = false;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // BlocBuilder<CounterCubit, int>(
          //   buildWhen: (previous, current) {
          //     // ignore: avoid_print
          //     print('prev: $previous');
          //     // ignore: avoid_print
          //     print('prev: $current');
          //     return previous != current;
          //   },
          //   builder: (context, state) {
          //     // ignore: avoid_print
          //     print('bloc build');
          //     return Center(
          //       child: Text(
          //         // ignore: unnecessary_brace_in_string_interps
          //         '${state}',
          //         style: Theme.of(context).textTheme.headlineMedium,
          //       ),
          //     );
          //   },
          // ),
          BlocBuilder<StringCubit, String>(
            buildWhen: (previous, current) {
              // ignore: avoid_print
              print('prev: $previous');
              // ignore: avoid_print
              print('prev: $current');
              return previous != current;
            },
            builder: (context, state) {
              // ignore: avoid_print
              print('bloc build');
              return Center(
                child: Text(
                  state,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove_red_eye_sharp),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    actions: [
                      IconButton(
                        onPressed: () {
                          context
                              .read<StringCubit>()
                              .showstring(controller.text);

                          controller.clear();
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.add),
                      )
                    ],
                    content: TextFormField(
                      controller: controller,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

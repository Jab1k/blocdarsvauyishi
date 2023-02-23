import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../bloc/bloc_uyiwi.dart';
import '../bloc/uyiwiuchun.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (controller.text == 'Jabik') {
                      final snackBar = SnackBar(
                        content: const Text('Password is correct'),
                        action: SnackBarAction(
                          label: 'kk emas',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      context
                          .read<Uyiwicupit>()
                          .showtextfromfeild(controller.text);
                      controller.clear();
                    } else {
                      controller.clear();
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text('Password is not correct'),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("close"))
                                ],
                              ));
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

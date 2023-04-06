import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You can push the button below to increment the counter'),
            const SizedBox(height: 20),
            GetBuilder<CounterController>(
              init: CounterController(), // INIT IT ONLY THE FIRST TIME
              builder: (_) => Text('${controller.counter}',
                  style: Theme.of(context).textTheme.headline4),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

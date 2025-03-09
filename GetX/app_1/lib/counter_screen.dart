import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter")),
      body: Center(
        child: Obx(
          () =>
              Text("Count ${controller.count}", style: TextStyle(fontSize: 30)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.camera),
      ),
    );
  }
}

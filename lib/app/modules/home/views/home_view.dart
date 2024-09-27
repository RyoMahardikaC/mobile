import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displaying the counter value using the controller
            Obx(() => Text(
              'Counter Value: ${controller.counter}',
              style: const TextStyle(fontSize: 20),
            )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.incrementCounter(),
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

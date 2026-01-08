import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MinePage extends GetView<MineController> {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的')),
      body: const Center(child: Text('MinePage')),
    );
  }
}
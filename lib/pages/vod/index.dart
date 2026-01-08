import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class VodPage extends GetView<VodController> {
  const VodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('资源库')),
      body: const Center(child: Text('VodPage')),
    );
  }
}
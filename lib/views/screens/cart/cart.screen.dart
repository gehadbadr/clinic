import 'package:clinic/views/widgets/appBarSimple.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBarSimpleWibget(
            onPressLeading: () {
              Get.back();
            },
          )),
      body: const Center(
        child: Text('cart'),
      ),
    );
  }
}

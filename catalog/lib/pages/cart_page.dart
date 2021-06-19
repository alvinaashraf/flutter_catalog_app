import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.LightPurple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart Page".text.make(),
      ),
    );
  }
}

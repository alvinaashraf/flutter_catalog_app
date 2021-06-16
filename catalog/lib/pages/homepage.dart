import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("data"),
      ),
      body: Center(
        child: Container(
          child: Text("data"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

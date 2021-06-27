import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Catalog App',
        ),
      ),
      body: Center(
          child: Container(
        child: Text("Hello Flutter"),
      )),
      drawer: MyDrawer(),
    );
  }
}

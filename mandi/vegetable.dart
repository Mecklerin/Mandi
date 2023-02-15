import 'package:flutter/material.dart';
class vegetable extends StatefulWidget {
  const vegetable({Key? key}) : super(key: key);

  @override
  State<vegetable> createState() => _vegetableState();
}

class _vegetableState extends State<vegetable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}

import 'package:flutter/material.dart';
class fruit extends StatefulWidget {
  const fruit({Key? key}) : super(key: key);

  @override
  State<fruit> createState() => _fruitState();
}

class _fruitState extends State<fruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
    );
  }
}

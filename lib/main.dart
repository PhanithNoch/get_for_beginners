import 'package:flutter/material.dart';
import 'package:get_for_beginners/views/screens/counter_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

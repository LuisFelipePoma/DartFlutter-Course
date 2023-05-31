import 'package:flutter/material.dart';

// MAIN-WIDGET
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// CONSTRUCTOR-WIDGET
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);

  void decrease() => setState(() => counter--);

  void zero() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize = const TextStyle(fontSize: 30);
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter Screen"),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks Counter", style: fontSize),
            Text('$counter', style: fontSize),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        zeroFn: zero,
      ),
    );
  }
}

// Widgets

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function zeroFn;

  const CustomFloatingActions(
      {super.key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.zeroFn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_rounded),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero_rounded),
          onPressed: () => zeroFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}

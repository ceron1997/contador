import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  // String clicks = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '': 's'}',
              style: const TextStyle(
                fontSize: 25,
              ),
            )
          ],
          // idealmente caundo un widhet jamas
          //  sera modificado desde su construccion
          //  entonces se podra poner el const
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          //  clicks = (clickCounter == 1)? 'Click' :  'Clicks'  ;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

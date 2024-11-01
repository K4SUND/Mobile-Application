import 'package:flutter/material.dart';

class HomePageWithState extends StatefulWidget {
  const HomePageWithState({super.key});

  // int _counter = 200;

  @override
  State<HomePageWithState> createState() => _HomePageWithStateState();
}

class _HomePageWithStateState extends State<HomePageWithState> {
  int _counter2 = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          // "$_counter2 , ${widget._counter}",
          "$_counter2 ",
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //setState function -> notify the change of the state
          setState(() {
            _counter2++;
            // widget._counter++;
          });

          print(_counter2);
          // print(widget._counter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

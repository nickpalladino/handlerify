import 'package:flutter/material.dart';

class TrainPage extends StatefulWidget {
  const TrainPage({super.key});
  //const Train({super.key, required this.title});
  //final String title;


  @override
  State<TrainPage> createState() => _TrainState();
}

class _TrainState extends State<TrainPage> {

  void _incrementCounter() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        title: Text('Today'),
        centerTitle: false,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      //tooltip: 'Increment',
      backgroundColor: Colors.red,
      child: const Icon(Icons.circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:handlerify/widgets/statistic_card.dart';

class TrainPage extends StatefulWidget {
  const TrainPage({super.key});
  //const Train({super.key, required this.title});
  //final String title;


  @override
  State<TrainPage> createState() => _TrainState();
}

class _TrainState extends State<TrainPage> {

  void _startSession() {
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
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisSize: MainAxisSize.max,
          children: [
            StatisticCard(value: '4', description: 'Sessions',),
            StatisticCard(value: '1:35:05', description: 'Elapsed Time',),
      ]),
      floatingActionButton: FloatingActionButton(
      onPressed: _startSession,
      backgroundColor: Colors.red,
      child: const Icon(Icons.circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );
  }
}
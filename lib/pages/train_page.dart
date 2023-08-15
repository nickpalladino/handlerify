import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handlerify/widgets/statistic_card.dart';

import '../models/location_tag.dart';
import '../models/session.dart';
import '../services/session_service.dart';
import '../widgets/session_list.dart';

class TrainPage extends StatefulWidget {
  const TrainPage({super.key});
  //const Train({super.key, required this.title});
  //final String title;


  @override
  State<TrainPage> createState() => _TrainState();
}

class _TrainState extends State<TrainPage> {

  List<Session> sessions = SessionService.getTodaysSessions();

  void _startSession() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisSize: MainAxisSize.max,
            children: [
              StatisticCard(value: '6', description: 'Sessions',),
              StatisticCard(value: '1:35:05', description: 'Elapsed Time',),
              StatisticCard(value: '1.3 mi', description: 'Distance',),
            ]),
            Row(children: [
              Expanded(child:
              SizedBox(
                height: 550.0,
                child:
                SessionList(sessions: sessions,),
              ))
            ],),
      ]),
      // TODO: see if can do this without nested scaffold
      floatingActionButton: FloatingActionButton.large(
      onPressed: _startSession,
      backgroundColor: Colors.red,
      child: const Icon(Icons.circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,

    );
  }
}
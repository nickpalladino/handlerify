import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handlerify/injectable.dart';
import 'package:handlerify/services/session_controller.dart';
import 'package:handlerify/ui/pages/session_record_page.dart';
import 'package:handlerify/ui/widgets/statistic_card.dart';

import '../../models/session.dart';
import '../../models/sessions_with_statistics.dart';
import '../../services/session_service.dart';
import '../../services/session_service_mock.dart';
import '../widgets/session_list.dart';

class TrainPage extends StatefulWidget {
  const TrainPage({super.key});

  @override
  State<TrainPage> createState() => _TrainState();
}

class _TrainState extends State<TrainPage> {

  final SessionController sessionController = getIt.get<SessionController>();

  Future<void> _startSession() async {
    //await sessionController.start();
    // TODO: just testing for now
    //sessionController.save();
    // Navigate to session record page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SessionRecordPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SessionsWithStatistics>(
        future: sessionController.getTodaysSessionsAndStats(),
        builder: (BuildContext context, AsyncSnapshot<SessionsWithStatistics> snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            children = <Widget>[
              Expanded(child:
              Scaffold(
                body: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //mainAxisSize: MainAxisSize.max,
                          children: [
                            StatisticCard(value: snapshot.data!.statistics.numSessions.toString(), description: 'Sessions',),
                            StatisticCard(
                              value: snapshot.data!.statistics.elapsedTime.toString().split('.').first.padLeft(8, "0"), description: 'Elapsed Time',),
                            //StatisticCard(
                            //  value: '1.3 mi', description: 'Distance',),
                          ]),
                      Row(children: [
                        Expanded(
                          child:
                            SessionList(sessions: snapshot.data!.sessions),
                        )
                      ],),
                    ]),
                // TODO: see if can do this without nested scaffold
                floatingActionButton: FloatingActionButton.large(
                  onPressed: _startSession,
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.circle),
                ),
                // This trailing comma makes auto-formatting nicer for build methods.
                floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,

              )
              )
            ];
          } else {
            children = const <Widget>[
              // TODO: Make this nicer
              Text('Loading')
            ];
          }
          return Column(children: children);
        });
  }
}
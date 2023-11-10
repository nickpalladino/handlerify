import 'package:flutter/material.dart';
import 'package:handlerify/ui/widgets/session_list.dart';

import '../../injectable.dart';
import '../../models/session.dart';
import '../../services/session_service.dart';
import '../../services/session_service_mock.dart';


class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryState();
}

class _HistoryState extends State<HistoryPage> {

  final SessionService sessionService = getIt.get<SessionService>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Session>>(
        future: sessionService.getAllSessions(),
        builder: (BuildContext context, AsyncSnapshot<List<Session>> snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            children = <Widget>[
              Expanded(child:
                SessionList(sessions: snapshot.data!,)
              )
            ];
          } else {
            children = const <Widget>[
              // TODO: Make this nicer
              Text('Loading')
            ];
          }
          return Column(children: children);
      }

    );
  }
}
import 'package:flutter/material.dart';
import 'package:handlerify/ui/widgets/session_list.dart';

import '../../models/session.dart';
import '../../services/session_service_mock.dart';


class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsState();
}

class _StatisticsState extends State<StatisticsPage> {

  List<Session> sessions = SessionServiceMock().getAllSessions();

  @override
  Widget build(BuildContext context) {
    return SessionList(sessions: sessions,);
  }
}
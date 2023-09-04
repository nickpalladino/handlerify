import 'package:handlerify/models/session.dart';
import 'package:handlerify/models/statistics.dart';

class SessionsWithStatistics {
  List<Session> sessions;
  Statistics statistics;

  SessionsWithStatistics(this.sessions, this.statistics);
}
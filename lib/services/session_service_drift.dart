import 'package:handlerify/services/session_service.dart';
import 'package:injectable/injectable.dart';

import '../models/session.dart';

@singleton
class SessionServiceDrift implements SessionService {

  SessionServiceDrift();

  List<Session> getTodaysSessions() {
    // TODO
    List<Session> sessions = [];
    return sessions;
  }

  List<Session> getAllSessions() {
    return getTodaysSessions();
  }
}
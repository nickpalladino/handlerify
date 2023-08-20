import 'package:handlerify/daos/sessions_dao.dart';
import 'package:handlerify/services/session_service.dart';
import 'package:injectable/injectable.dart';
import 'package:handlerify/db/database.dart' as db;

import '../models/session.dart';

@dev
@Singleton(as: SessionService)
class SessionServiceDrift implements SessionService {

  final SessionsDao sessionsDao;

  SessionServiceDrift(SessionsDao this.sessionsDao);

  List<Session> getTodaysSessions() {
    // TODO
    List<Session> sessions = [];
    return sessions;
  }

  Future<List<Session>> getAllSessions() async {
    List<db.Session> sessions = await sessionsDao.getAll();
    return sessions.map((session) => Session.fromDatabase(session)).toList();
  }
}
import 'package:drift/drift.dart';
import 'package:handlerify/daos/sessions_dao.dart';
import 'package:handlerify/services/session_service.dart';
import 'package:injectable/injectable.dart';
import 'package:handlerify/db/database.dart' as db;

import '../models/location_tag.dart';
import '../models/note.dart';
import '../models/session.dart';

@dev
@Singleton(as: SessionService)
class SessionServiceDrift implements SessionService {

  final SessionsDao sessionsDao;

  SessionServiceDrift(SessionsDao this.sessionsDao);

  Session _fromDatabase(db.Session session) {
    List<Note> noNotes = <Note>[];

    return Session(
      session.title,
      //TODO: actual db values
      LocationTag('Apartment'),
      session.startTime,
      Duration(minutes: 15, seconds:30),
      noNotes
    );
  }

  db.SessionsCompanion _toCompanion(Session session) {
    return db.SessionsCompanion(
        title: Value(session.title!),
        startTime: Value(session.startTime!)
    );
  }

  Future<List<Session>> getTodaysSessions() async {
    List<db.Session> sessions = await sessionsDao.getToday();
    return sessions.map((session) => _fromDatabase(session)).toList();
  }

  Future<List<Session>> getAllSessions() async {
    List<db.Session> sessions = await sessionsDao.getAll();
    return sessions.map((session) => _fromDatabase(session)).toList();
  }

  Future<int> getAllCount() async {
    return await sessionsDao.getCount();
  }

  void create(Session session) async {
    db.SessionsCompanion entry = _toCompanion(session);
    await sessionsDao.create(entry);
  }

}
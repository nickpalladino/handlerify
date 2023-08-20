import '../models/session.dart';

abstract interface class SessionService {

  List<Session> getTodaysSessions();
  Future<List<Session>> getAllSessions();
  Future<int> getAllCount();
  void create(Session session);

}

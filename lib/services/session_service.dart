import '../models/session.dart';

abstract interface class SessionService {

  Future<List<Session>> getTodaysSessions();
  Future<List<Session>> getAllSessions();
  Future<int> getAllCount();
  Future<int> getTodayCount();
  void create(Session session);

}

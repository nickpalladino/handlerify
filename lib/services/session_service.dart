import '../models/session.dart';

abstract interface class SessionService {

  List<Session> getTodaysSessions();
  Future<List<Session>> getAllSessions();

}

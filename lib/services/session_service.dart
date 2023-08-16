import '../models/session.dart';

abstract interface class SessionService {

  List<Session> getTodaysSessions();
  List<Session> getAllSessions();

}

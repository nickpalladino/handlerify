import '../models/location_tag.dart';
import '../models/session.dart';

class SessionService {

  SessionService();

  static List<Session> getTodaysSessions() {
    List<Session> sessions = [
      Session('Aug 12 Session 6', LocationTag('Apartment'), DateTime.parse('2023-08-12 20:32:04Z')),
      Session('Aug 12 Session 5', LocationTag('Apartment Dog Park'), DateTime.parse('2023-08-12 17:10:04Z')),
      Session('Aug 12 Session 4', LocationTag('Apartment'), DateTime.parse('2023-08-12 15:45:04Z')),
      Session('Aug 12 Session 3', LocationTag('Lowes Parking Lot'), DateTime.parse('2023-08-12 12:06:04Z')),
      Session('Aug 12 Session 2', LocationTag('Apartment'), DateTime.parse('2023-08-12 10:22:04Z')),
      Session('Aug 12 Session 1', LocationTag('Ithaca Dog Park'), DateTime.parse('2023-08-12 08:18:04Z')),
    ];
    return sessions;
  }

  static List<Session> getAllSessions() {
    List<Session> sessions = [
      Session('Aug 12 Session 6', LocationTag('Apartment'), DateTime.parse('2023-08-12 20:32:04Z')),
      Session('Aug 12 Session 5', LocationTag('Apartment Dog Park'), DateTime.parse('2023-08-12 17:10:04Z')),
      Session('Aug 12 Session 4', LocationTag('Apartment'), DateTime.parse('2023-08-12 15:45:04Z')),
      Session('Aug 12 Session 3', LocationTag('Lowes Parking Lot'), DateTime.parse('2023-08-12 12:06:04Z')),
      Session('Aug 12 Session 2', LocationTag('Apartment'), DateTime.parse('2023-08-12 10:22:04Z')),
      Session('Aug 12 Session 1', LocationTag('Ithaca Dog Park'), DateTime.parse('2023-08-12 08:18:04Z')),
    ];
    return sessions;
  }
}
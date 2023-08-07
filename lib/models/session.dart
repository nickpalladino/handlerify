import 'package:handlerify/models/location_tag.dart';

import 'note.dart';

class Session {
  String? title;
  LocationTag? locationTag;
  DateTime? startTime;
  DateTime? endTime;
  Duration? elapsedTime;
  double? distanceMiles;
  List<Note>? notes;
  // TODO: geolocation waypoints
  // TODO: audio file information

  Session();
}
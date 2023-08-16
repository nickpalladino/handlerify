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

  Session(this.title, this.locationTag, this.startTime, this.elapsedTime, this.notes);

  String getFormattedElapsedTime() {
    if (elapsedTime!.inHours < 1) {
      return elapsedTime.toString().substring(2, 7);
    }
    return elapsedTime.toString().split('.').first;
  }

  int getNumberNotes() {
    if (notes != null) {
      return notes!.length;
    }
    return 0;
  }
}
import 'package:handlerify/models/tag.dart';

enum Sentiment { good, bad, neutral }

class Note {
  Tag? name;
  Sentiment? sentiment;
}
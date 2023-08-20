import 'package:flutter/material.dart';
import 'handlerify.dart';
import 'injectable.dart';

void main() {
  configureDependencies('test');
  runApp(const HandlerifyApp());
}
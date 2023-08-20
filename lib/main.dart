import 'package:flutter/material.dart';
import 'handlerify.dart';
import 'injectable.dart';

void main() {
  configureDependencies('dev');
  runApp(const HandlerifyApp());
}
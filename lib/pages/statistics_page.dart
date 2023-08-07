import 'package:flutter/material.dart';
import 'package:handlerify/widgets/session_list.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsState();
}

class _StatisticsState extends State<StatisticsPage> {

  @override
  Widget build(BuildContext context) {
    return SessionList();
  }
}
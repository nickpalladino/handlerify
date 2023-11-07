import 'package:flutter/cupertino.dart';

import '../../injectable.dart';
import '../../services/session_service.dart';

class SessionPage extends StatefulWidget {
  const SessionPage({super.key});

  @override
  State<SessionPage> createState() => _SessionState();
}

class _SessionState extends State<SessionPage> {

  final SessionService sessionService = getIt.get<SessionService>();

  @override
  Widget build(BuildContext context) {
    return Text('Session Page');
  }
}
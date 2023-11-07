import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handlerify/handlerify.dart';
import 'package:handlerify/ui/pages/train_page.dart';
import 'package:handlerify/ui/widgets/audio_recorder.dart';

import '../../injectable.dart';
import '../../services/session_controller.dart';
import '../../services/session_service.dart';

class SessionRecordPage extends StatefulWidget {
  const SessionRecordPage({super.key});

  @override
  State<SessionRecordPage> createState() => _SessionRecordState();
}

class _SessionRecordState extends State<SessionRecordPage> {

  final SessionController sessionController = getIt.get<SessionController>();

  _save(String path, int lengthSeconds) {

    sessionController.save(lengthSeconds, path);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Handlerify(title: 'Handerlify')),
    );
  }

  _start() {
    sessionController.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        title: Text('Record Session'),
      ),
      body: Center(
        child: Recorder(onStop: (String path, int lengthSeconds) { _save(path, lengthSeconds); },
          onStart: () { _start(); },),
      )
    );
  }
}
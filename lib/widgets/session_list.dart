import 'package:flutter/material.dart';

import '../models/session.dart';

class SessionList extends StatelessWidget {
  SessionList({super.key});

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
            height: 100,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(children: [
                  Text('Aug. 5 Session'),
              ]),
                Column(children: [
                  Text('8:23 AM'),
                ]),
            ]),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Icon(Icons.place),
                    ]),
                    Column(children: [
                      Text('Home'),
                    ]),
                    Column(children: [
                      Icon(Icons.construction,),
                    ]),
                    Column(children: [
                      Text('Flat collar'),
                    ]),
                    Column(children: [
                      Text('Long Line'),
                    ]),
                    Column(children: [
                      Icon(Icons.text_snippet,),
                    ]),
                    Column(children: [
                      Icon(Icons.timer,),
                    ]),
                    Column(children: [
                      Text('1:15:34'),
                    ]),
                    //Text('Entry ${entries[index]}')
                  ]),
            ]
          )));
        }
    );
  }
}
import 'package:flutter/material.dart';

import 'package:handlerify/widgets/tag.dart';

class SessionList extends StatelessWidget {
  SessionList({super.key});

  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  final List<int> colorCodes = <int>[600, 500];

  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
            height: 100,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(children: [
                  Text('Aug. 5 Session', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5)),
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
                      //Text('Home'),
                      Tag(value: 'Apartment',
                          backgroundColor: Colors.green),
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
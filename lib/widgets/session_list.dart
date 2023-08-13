import 'package:flutter/material.dart';
import 'package:handlerify/models/location_tag.dart';
import 'package:handlerify/models/session.dart';
import 'package:handlerify/widgets/tag.dart';

class SessionList extends StatelessWidget {
  SessionList({super.key});

  //final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  //final List<int> colorCodes = <int>[600, 500];

  List<Session> sessions = [
    Session('Aug 12 Session 6', LocationTag('Apartment')),
    Session('Aug 12 Session 5', LocationTag('Apartment Dog Park')),
    Session('Aug 12 Session 4', LocationTag('Apartment')),
    Session('Aug 12 Session 3', LocationTag('Lowes Parking Lot')),
    Session('Aug 12 Session 2', LocationTag('Apartment')),
    Session('Aug 12 Session 1', LocationTag('Ithaca Dog Park')),
  ];


  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: sessions.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 5.0),
            height: 100,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(children: [
                  Text(sessions[index].title!, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5)),
              ]),
                Column(children: [
                  Text('8:23 AM'),
                ]),
            ]),

              Row(
                  //mainAxisAlignment: MainAxisAlignment.,
                  children: [
                    Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Icon(Icons.place),
                    ]),
                    Column(children: [
                      //Text('Home'),
                      Tag(value: sessions[index].locationTag!.name!,
                          backgroundColor: Colors.green),
                    ]),
                    Spacer(),
                    /*
                    Column(children: [
                      Icon(Icons.construction,),
                    ]),
                    Column(children: [
                      Text('Flat collar'),
                    ]),
                    Column(children: [
                      Text('Long Line'),
                    ]),
                     */
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
import 'package:flutter/material.dart';
import 'package:handlerify/models/location_tag.dart';
import 'package:handlerify/models/session.dart';
import 'package:handlerify/widgets/tag.dart';
import 'package:intl/intl.dart';

class SessionList extends StatelessWidget {
  SessionList({super.key});

  // hh:mm
  final DateFormat formatter = DateFormat('jm');

  List<Session> sessions = [
    Session('Aug 12 Session 6', LocationTag('Apartment'), DateTime.parse('2023-08-12 20:32:04Z')),
    Session('Aug 12 Session 5', LocationTag('Apartment Dog Park'), DateTime.parse('2023-08-12 17:10:04Z')),
    Session('Aug 12 Session 4', LocationTag('Apartment'), DateTime.parse('2023-08-12 15:45:04Z')),
    Session('Aug 12 Session 3', LocationTag('Lowes Parking Lot'), DateTime.parse('2023-08-12 12:06:04Z')),
    Session('Aug 12 Session 2', LocationTag('Apartment'), DateTime.parse('2023-08-12 10:22:04Z')),
    Session('Aug 12 Session 1', LocationTag('Ithaca Dog Park'), DateTime.parse('2023-08-12 08:18:04Z')),
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
                  Text(formatter.format(sessions[index].startTime!))
                  //Text('8:23 AM'),
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
                    Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child:
                              Badge(label: Text('2'),
                                child: Icon(Icons.text_snippet),)
                            //Icon(Icons.text_snippet,),
                          )]),
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child:
                      Icon(Icons.timer,),)
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
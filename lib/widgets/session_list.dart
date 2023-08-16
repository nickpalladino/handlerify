import 'package:flutter/material.dart';
import 'package:handlerify/models/location_tag.dart';
import 'package:handlerify/models/session.dart';
import 'package:handlerify/widgets/tag.dart';
import 'package:intl/intl.dart';

class SessionList extends StatelessWidget {
  SessionList({super.key, required this.sessions});

  List<Session> sessions;

  // hh:mm
  final DateFormat formatter = DateFormat('jm');

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
                              Badge(label: Text(sessions[index].getNumberNotes().toString()),
                                backgroundColor: Colors.blue,
                                textColor: Colors.white,
                                //extStyle: TextStyle(fontWeight: FontWeight.bold),
                                child: Icon(Icons.text_snippet),)
                            //Icon(Icons.text_snippet,),
                          )]),
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child:
                      Icon(Icons.timer,),)
                    ]),
                    Column(children: [
                      //Text('1:15:34'),
                      Text(sessions[index].getFormattedElapsedTime())
                    ]),
                    //Text('Entry ${entries[index]}')
                  ]),
            ]
          )));
        }
    );
  }
}
import 'package:flutter/material.dart';

class StatisticCard extends StatelessWidget {
  StatisticCard({super.key, required this.value, required this.description});

  final String value;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.3,
        height: 90,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Column(children: [
           Text(description),
           Text(value, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.5))
         ])
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  Tag({super.key, required this.value, required this.backgroundColor});

  final String value;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(3.0),
        ),
        color: backgroundColor,//Color.fromARGB(255, 74, 137, 92),
      ),
        margin: const EdgeInsets.symmetric(
            horizontal: 5.0),
        padding: const EdgeInsets.symmetric(
            horizontal: 5.0, vertical: 5.0),
        child:
          Text(value)
    );
  }
}
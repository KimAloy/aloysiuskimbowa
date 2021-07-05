import 'dart:ui';

import 'package:flutter/material.dart';

class DoneFeature extends StatelessWidget {
  final String text;

  const DoneFeature({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.done),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(' ' + text),
          ),
        ),
      ],
    );
  }
}

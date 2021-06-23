import 'package:flutter/material.dart';

class MyGmail extends StatelessWidget {
  const MyGmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.email_outlined,
          color: Colors.red,
          size: 19,
        ),
        const SizedBox(width: 4),
        SelectableText('aloysiuskimbowa@gmail.com'),
      ],
    );
  }
}

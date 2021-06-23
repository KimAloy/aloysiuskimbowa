import 'package:flutter/material.dart';

class MyWhatsApp extends StatelessWidget {
  const MyWhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          child: Image.asset(
            'assets/whatsapp_logo.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 5),
        SelectableText('+256702907267'),
      ],
    );
  }
}

import 'package:aloysiuskimbowa/constants.dart';
import 'package:aloysiuskimbowa/widgets/my_things_app.dart';
import 'package:aloysiuskimbowa/widgets/udemy_certificate.dart';
import 'package:flutter/material.dart';

class MySkillsDemo extends StatelessWidget {
  const MySkillsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Flutter software developer specialising in Andriod, iOS, and Web.',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Skills Demo App', style: kSkillsTextStyle),
            SizedBox(height: 12),
            MyThingsApp(),
            const SizedBox(height: 30),
            UdemyCertificate(),
          ],
        ),
      ],
    );
  }
}

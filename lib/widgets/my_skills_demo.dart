import 'package:aloysiuskimbowa/constants.dart';
import 'package:aloysiuskimbowa/widgets/my_things_app.dart';
import 'package:aloysiuskimbowa/widgets/responsive.dart';
import 'package:aloysiuskimbowa/widgets/udemy_certificate.dart';
import 'package:flutter/material.dart';

class MySkillsDemo extends StatelessWidget {
  const MySkillsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Responsive.isDesktop(context) ? width * (1 / 3) : null,
          child: Text(
            'Flutter software developer specialising in Andriod, iOS, and Web.\nI write code that is clear, reusable, scalable, testable, performant, and maintainable.',
            style: TextStyle(height: 1.5, fontWeight: FontWeight.w600),
          ),
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

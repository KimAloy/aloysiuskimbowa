import 'package:aloysiuskimbowa/constants.dart';
import 'package:flutter/material.dart';

class YearsExperience extends StatelessWidget {
  const YearsExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '1+',
          style: TextStyle(
            fontSize: 60,
            color: kPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text('Years', style: kYearsExperience),
        const SizedBox(height: 4),
        Text('Experience', style: kYearsExperience),
        const SizedBox(height: 4),
        Text('Working', style: kYearsExperience),
      ],
    );
  }
}

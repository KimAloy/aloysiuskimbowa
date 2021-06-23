import 'package:aloysiuskimbowa/constants.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class UdemyCertificate extends StatelessWidget {
  const UdemyCertificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Udemy Certificate', style: kSkillsTextStyle),
        const SizedBox(height: 8),
        Container(
          height: 190,
          width: 400,
          child: PhotoView(
            backgroundDecoration: BoxDecoration(color: Colors.white),
            imageProvider: AssetImage('assets/certificate.jpg'),
            // imageProvider: NetworkImage(data['receiptImage']),
          ),
        ),
      ],
    );
  }
}

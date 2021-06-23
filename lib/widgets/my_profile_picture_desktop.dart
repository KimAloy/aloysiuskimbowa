import 'package:aloysiuskimbowa/constants.dart';
import 'package:aloysiuskimbowa/widgets/responsive.dart';
import 'package:flutter/material.dart';

class MyProfilePictureDesktop extends StatelessWidget {
  const MyProfilePictureDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: kPurple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
      height: 320,
      width: Responsive.isTablet(context)
          ? 260
          : size.width * 0.4,
      child: Image.asset(
        'assets/profile_picture.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

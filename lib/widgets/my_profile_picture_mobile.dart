import 'package:aloysiuskimbowa/constants.dart';
import 'package:flutter/material.dart';

class MyProfilePictureMobile extends StatelessWidget {
  const MyProfilePictureMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        color: kPurple,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 280,
      width: size.width * 0.4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Kimbowa\nAloysius',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Container(
                height: 230,
                child: Image.asset(
                  'assets/profile_picture.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

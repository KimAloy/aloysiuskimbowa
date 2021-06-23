import 'package:aloysiuskimbowa/constants.dart';
import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  final String image;
  final String title;
  final double? sizedBox;

  const WrapWidget({
    Key? key,
    required this.image,
    required this.title,
    this.sizedBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: 30,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          sizedBox != null ? SizedBox(width: sizedBox) : SizedBox.shrink(),
          Text(title, style: kLogoTextStyle),
        ],
      ),
    );
  }
}

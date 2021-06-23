import 'package:aloysiuskimbowa/my_APIs.dart';
import 'package:flutter/material.dart';

class MyGitHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'https://github.com/KimALoy';

    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          child: Image.asset(
            'assets/github_logo.png',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () => MyAPIs.launchInBrowser(url),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              url,
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:aloysiuskimbowa/my_APIs.dart';
import 'package:flutter/material.dart';

class MyGitHub extends StatefulWidget {
  @override
  _MyGitHubState createState() => _MyGitHubState();
}

class _MyGitHubState extends State<MyGitHub> {
  bool _hovering = false;
  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }

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
            onEnter: (e) => _mouseEnter(true),
            onExit: (e) => _mouseEnter(false),
            cursor: SystemMouseCursors.click,
            child: Text(
              url,
              style: TextStyle(
                  color: _hovering ? Colors.green : Colors.blue,
                  decoration: _hovering ? TextDecoration.underline : null),
            ),
          ),
        ),
      ],
    );
  }
}

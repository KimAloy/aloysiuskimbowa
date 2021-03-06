import 'package:aloysiuskimbowa/my_APIs.dart';
import 'package:aloysiuskimbowa/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';

class FlutterFirebaseGitHubDart extends StatelessWidget {
  const FlutterFirebaseGitHubDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = 'https://github.com/KimALoy';

    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        WrapWidget(image: 'assets/flutter_logo.png', title: 'Flutter'),
        WrapWidget(image: 'assets/firebase_logo.png', title: 'Firebase'),
        GestureDetector(
          onTap: () => MyAPIs.launchInBrowser(url),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: WrapWidget(
                sizedBox: 4, image: 'assets/github_logo.png', title: 'GitHub'),
          ),
        ),
        WrapWidget(sizedBox: 2, image: 'assets/dart_logo.png', title: 'Dart'),
      ],
    );
  }
}

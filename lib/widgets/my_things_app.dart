import 'package:aloysiuskimbowa/my_APIs.dart';
import 'package:aloysiuskimbowa/widgets/done_feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThingsApp extends StatelessWidget {
  const MyThingsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = 'https://my-things-8389b.web.app/';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'My Things is a web app that makes it easy to store your receipts in the cloud.'),
        SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            GestureDetector(
              onTap: () => MyAPIs.launchInBrowser(url),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  // color: Colors.blue,
                  height: 190,
                  width: 285,
                  child: Image.asset('assets/myThings_screenshot.jpeg'),
                ),
              ),
            ),
            _MyButton(url: url),
          ],
        ),
        SizedBox(height: 8),
        DoneFeature(
          text: 'Triple click to zoom-in and zoom out receipt',
        ),
        SizedBox(height: 4),
        DoneFeature(
            text:
                'All Firebase Firestore CRUD (Create, Read, Update, Delete) operations'),
        SizedBox(height: 4),
        DoneFeature(
          text: 'Firebase Authentication',
        ),
        SizedBox(height: 4),
        DoneFeature(
          text: 'Firebase Storage',
        ),
        SizedBox(height: 4),
        DoneFeature(
          text: 'Provider state management',
        ),
        SizedBox(height: 4),
        SizedBox(height: 4),
        DoneFeature(
          text: 'Automatically updates web app when code is pushed to GitHub',
        ),
        DoneFeature(
          text: 'Reset password',
        ),
        SizedBox(height: 4),
        DoneFeature(
          text: 'Pull to refresh',
        ),
        SizedBox(height: 4),
        DoneFeature(
          text: 'Download receipt',
        ),
        SizedBox(height: 12),
        _MyButton(url: url),
      ],
    );
  }
}

class _MyButton extends StatelessWidget {
  final String url;

  const _MyButton({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ElevatedButton(
        onPressed: () => MyAPIs.launchInBrowser(url),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text('Go to Demo App'),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
      ),
    );
  }
}

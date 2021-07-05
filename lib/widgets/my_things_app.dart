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
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 6),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: featuresList.length,
          itemBuilder: (BuildContext context, int index) {
            Feature feature = featuresList[index];
            return DoneFeature(text: feature.text);
          },
        ),
        SizedBox(height: 8),
        _MyButton(url: url),
      ],
    );
  }
}

List<Feature> featuresList = [
  Feature(
      text:
          'All Firebase Firestore CRUD operations (Create, Read, Update, Delete)'),
  Feature(text: 'Firebase Authentication'),
  Feature(text: 'Firebase Storage'),
  Feature(text: 'Riverpod state management'),
  Feature(text: 'Automatically updates web app when code is pushed to GitHub'),
  Feature(text: 'Reset password'),
  Feature(text: 'Pull to refresh'),
  Feature(text: 'Triple click to zoom-in and zoom out receipt'),
  // Feature(feature: 'Download receipt'),
];

class Feature {
  final String text;

  Feature({required this.text});
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

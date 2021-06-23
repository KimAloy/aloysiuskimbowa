import 'package:aloysiuskimbowa/widgets/done_feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MyThingsApp extends StatelessWidget {
  const MyThingsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 190,
          width: 400,
          child: PhotoView(
            backgroundDecoration: BoxDecoration(color: Colors.white),
            imageProvider: AssetImage('assets/myThings_screenshot.jpeg'),
            // imageProvider: NetworkImage(data['receiptImage']),
          ),
        ),
        SizedBox(height: 8),
        DoneFeature(
          text: 'Triple click to zoom-in and zoom out receipt (try it!)',
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
        )
      ],
    );
  }
}

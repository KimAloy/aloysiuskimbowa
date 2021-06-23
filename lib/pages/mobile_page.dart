import 'package:aloysiuskimbowa/constants.dart';
import 'package:aloysiuskimbowa/widgets/flutter_firebase_github_dart.dart';
import 'package:aloysiuskimbowa/widgets/my_GitHub.dart';
import 'package:aloysiuskimbowa/widgets/my_gmail.dart';
import 'package:aloysiuskimbowa/widgets/my_profile_picture_mobile.dart';
import 'package:aloysiuskimbowa/widgets/my_skills_demo.dart';
import 'package:aloysiuskimbowa/widgets/my_whatsapp.dart';
import 'package:flutter/material.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  Future<void> refresh() {
    return Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => super.widget));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refresh,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: kLightPurple,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 20,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        'Software Developer',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 15),
                      MyProfilePictureMobile(),
                      SizedBox(height: 15),
                      MyGitHub(),
                      SizedBox(height: 4),
                      MyGmail(),
                      SizedBox(height: 4),
                      MyWhatsApp(),
                      SizedBox(height: 30),
                      Center(child: FlutterFirebaseGitHubDart()),
                      SizedBox(height: 30),
                      MySkillsDemo(),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

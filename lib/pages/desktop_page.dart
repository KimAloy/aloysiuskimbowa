import 'package:aloysiuskimbowa/constants.dart';
import 'package:aloysiuskimbowa/widgets/flutter_firebase_github_dart.dart';
import 'package:aloysiuskimbowa/widgets/my_GitHub.dart';
import 'package:aloysiuskimbowa/widgets/my_gmail.dart';
import 'package:aloysiuskimbowa/widgets/my_profile_picture_desktop.dart';
import 'package:aloysiuskimbowa/widgets/my_skills_demo.dart';
import 'package:aloysiuskimbowa/widgets/my_whatsapp.dart';
import 'package:aloysiuskimbowa/widgets/years_experience.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  Future<void> refresh() {
    return Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => super.widget));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: refresh,
      color: kPurple,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: kLightPurple,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              margin: EdgeInsets.only(
                left: size.width * 0.15,
                right: size.width * 0.15,
                top: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kimbowa\nAloysius',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text('Software developer'),
                            SizedBox(height: 15),
                            MyGitHub(),
                            SizedBox(height: 4),
                            MyGmail(),
                            SizedBox(height: 4),
                            MyWhatsApp(),
                          ],
                        ),
                        Spacer(),
                        MyProfilePictureDesktop()
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(child: FlutterFirebaseGitHubDart()),
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    alignment: Alignment.topLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        YearsExperience(),
                        const SizedBox(width: 55),
                        Expanded(
                          child: MySkillsDemo(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

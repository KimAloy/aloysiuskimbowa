import 'package:aloysiuskimbowa/pages/desktop_page.dart';
import 'package:aloysiuskimbowa/pages/mobile_page.dart';
import 'package:aloysiuskimbowa/widgets/responsive.dart';
import 'package:flutter/material.dart';

//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) ? MobilePage() : DesktopPage();
  }
}

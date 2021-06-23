import 'package:url_launcher/url_launcher.dart';

class MyAPIs {
  // Launch url in new browser
  static Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: false,
          forceWebView: false,
          headers: <String, String>{'my_header_key': 'my_header_value'});
    }
  }
}

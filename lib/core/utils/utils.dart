import 'package:url_launcher/url_launcher.dart';

// Method to launch a URL, made public (without underscore)
Future<void> launchUrlExternal(String link) async {
  final Uri url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

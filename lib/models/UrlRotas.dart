

import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  const url =
      'http://www.catanduva.sp.gov.br/wp-content/uploads/2021/04/stu_trajeto_tansp_coletivo.pdf';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
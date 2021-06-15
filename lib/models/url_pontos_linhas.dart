

import 'package:url_launcher/url_launcher.dart';

launchPontosLinhas() async {
  const url =
      'http://www.catanduva.sp.gov.br/wp-content/uploads/2021/04/stu_transp_coletivo_pontos_e_linhas.pdf';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
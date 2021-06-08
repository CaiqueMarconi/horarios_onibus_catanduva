import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:horarios_onibus_catanduva/AdMob/Ad_Banner.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/horasOnibus.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';
import 'package:provider/provider.dart';

class BairroPacha extends StatefulWidget {
  const BairroPacha({Key key}) : super(key: key);

  @override
  _BairroPachaState createState() => _BairroPachaState();
}

class _BairroPachaState extends State<BairroPacha> {

 /* _getData() async {
    DocumentSnapshot snapshot =
    await db.collection("bairros").document("pacha").get();

    var dados = snapshot.data;
    setState(() {
      _texto = dados["hora1"] + "    --------    " + dados["hora9"] +
          "\n" + dados["hora2"] + "    --------    " + dados["horas10"] +
          "\n" + dados["hora3"] + "    --------    " + dados["horas11"] +
          "\n" + dados["hora4"] + "    --------    " + dados["horas12"] +
          "\n" + dados["hora5"] + "    --------    " + dados["horas13"] +
          "\n" + dados["hora6"] + "\n" + dados["hora7"] +
          "\n" + dados["hora8"];
    });
  }*/

  BannerAd _banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        _banner = BannerAd(
          adUnitId: adState.bannerAdUnitId2,
          size: AdSize.banner,
          request: AdRequest(),
          listener: adState.adListener,
        )..load();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Pácha",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_Onibus()
          ),
          TextAtualizacao(),
          ButtonLink(),
          if (_banner == null)
            SizedBox(
              height: 50,
            )
          else
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  child: AdWidget(
                    ad: _banner,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}







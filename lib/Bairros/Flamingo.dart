import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:horarios_onibus_catanduva/AdMob/Ad_Banner.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/button_link_pontos_linhas.dart';
import 'package:horarios_onibus_catanduva/models/horasPacha.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';
import 'package:provider/provider.dart';

class BairroFlamingo extends StatefulWidget {
  const BairroFlamingo({Key key}) : super(key: key);

  @override
  _BairroFlamingoState createState() => _BairroFlamingoState();
}

class _BairroFlamingoState extends State<BairroFlamingo> {

  BannerAd _banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        _banner = BannerAd(
          adUnitId: adState.bannerAdUnitId5,
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
          NameBairros(text: "Flamingo",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_Pacha(),
          ),
          TextAtualizacao(),
          ButtonLink(),
          ButtonPontosLinhas(),
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
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

class BairroFipa extends StatefulWidget {
  const BairroFipa({Key key}) : super(key: key);

  @override
  _BairroFipaState createState() => _BairroFipaState();
}

class _BairroFipaState extends State<BairroFipa> {

  BannerAd _banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        _banner = BannerAd(
          adUnitId: adState.bannerAdUnitId6,
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
          NameBairros(text: "Fipa",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_Pacha()
          ),
          TextAtualizacao(),
          ButtonLink(),
          ButtonPontosLinhas(),
          if(_banner == null)
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
            )
        ],
      ),
    );
  }
}
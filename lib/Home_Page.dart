import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:horarios_onibus_catanduva/Bairros/Alpino.dart';
import 'package:horarios_onibus_catanduva/Bairros/Amend_JdCoq_Km.dart';
import 'package:horarios_onibus_catanduva/Bairros/Amendola.dart';
import 'package:horarios_onibus_catanduva/Bairros/Engracia.dart';
import 'package:horarios_onibus_catanduva/Bairros/EuclidesSolo.dart';
import 'package:horarios_onibus_catanduva/Bairros/Fipa.dart';
import 'package:horarios_onibus_catanduva/Bairros/Flamingo.dart';
import 'package:horarios_onibus_catanduva/Bairros/Ghernandes.dart';
import 'package:horarios_onibus_catanduva/Bairros/Lorens_JdTorre.dart';
import 'package:horarios_onibus_catanduva/Bairros/Nosso%20Teto.dart';
import 'package:horarios_onibus_catanduva/Bairros/Pach%C3%A1.dart';
import 'package:horarios_onibus_catanduva/Bairros/Pedro_Boso.dart';
import 'package:horarios_onibus_catanduva/Bairros/SallesTheodoro.dart';
import 'package:horarios_onibus_catanduva/Bairros/Tarraf.dart';
import 'package:horarios_onibus_catanduva/Bairros/Vila%20Celso.dart';
import 'package:provider/provider.dart';
import 'AdMob/Ad_Banner.dart';
import 'models/RowsElevatedButtons.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BannerAd _banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        _banner = BannerAd(
          adUnitId: adState.bannerAdUnitId,
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
        title: Text("Escolha um dos bairros abaixo!"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/imagemOnibus.jpg"),
            ),

            RowsBairros(text: "Pachá",
              onpressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroPacha())),
              text1: "Fipa",
              onpressed2: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroFipa())),
              text2: "Salles/Theodoro",
              onpressed3: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroSalles())),
            ),

            RowsBairros(text: "Euclides/Solo",
              onpressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroEuclid())),
              text1: "Tarraf",
              onpressed2: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroTarraf())),
              text2: "Vila Celso",
              onpressed3: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroVcelso())),
            ),

            RowsBairros(text: "Nosso Teto",
              onpressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroNteto())),
              text1: "Amêndola",
              onpressed2: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroAmendola())),
              text2: "Alpino",
              onpressed3: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroAlpino())),
            ),

            RowsBairros(text: "Flamingo",
              onpressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroFlamingo())),
              text1: "G.Hernandes",
              onpressed2: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroG_hernandes())),
              text2: "Engrácia",
              onpressed3: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroEngracia())),
            ),

            RowsBairros(text: "Pedro B.",
              onpressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroP_boso())),
              text1: "Amênd. \nJd. dos Coq.\nKm 7",
              onpressed2: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroJdCoqKm())),
              text2: "Lorens./Jd.Torre",
              onpressed3: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BairroJdTorre())),
            ),
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
      ),
    );
  }

}


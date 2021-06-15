import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/button_link_pontos_linhas.dart';
import 'package:horarios_onibus_catanduva/models/horasPacha.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';
import 'package:horarios_onibus_catanduva/models/url_pontos_linhas.dart';

class BairroAlpino extends StatefulWidget {
  const BairroAlpino({Key key}) : super(key: key);

  @override
  _BairroAlpinoState createState() => _BairroAlpinoState();
}

class _BairroAlpinoState extends State<BairroAlpino> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Alpino",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_Pacha()
          ),
          TextAtualizacao(),
          ButtonLink(),
          ButtonPontosLinhas()
        ],
      ),
    );
  }
}


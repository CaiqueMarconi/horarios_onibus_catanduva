import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/button_link_pontos_linhas.dart';
import 'package:horarios_onibus_catanduva/models/horario_P_Boso.dart';
import 'package:horarios_onibus_catanduva/models/horasPacha.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';

class BairroP_boso extends StatefulWidget {
  const BairroP_boso({Key key}) : super(key: key);

  @override
  _BairroP_bosoState createState() => _BairroP_bosoState();
}

class _BairroP_bosoState extends State<BairroP_boso> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Pedro Boso",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_P_boso(),
          ),
          Divider(),
          TextAtualizacao(),
          ButtonLink(),
          ButtonPontosLinhas()
        ],
      ),
    );
  }
}
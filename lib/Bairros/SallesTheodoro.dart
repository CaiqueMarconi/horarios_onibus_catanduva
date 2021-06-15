import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/button_link_pontos_linhas.dart';
import 'package:horarios_onibus_catanduva/models/horasPacha.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';

class BairroSalles extends StatefulWidget {
  const BairroSalles({Key key}) : super(key: key);

  @override
  _BairroSallesState createState() => _BairroSallesState();
}

class _BairroSallesState extends State<BairroSalles> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Salles/Theodoro",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_Pacha(),

          ),
          TextAtualizacao(),
          ButtonLink(),
          ButtonPontosLinhas()
        ],
      ),
    );
  }
}
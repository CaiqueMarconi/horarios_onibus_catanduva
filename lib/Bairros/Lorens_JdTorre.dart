import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/Horarios_Lorens_JdTorre.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/button_link_pontos_linhas.dart';
import 'package:horarios_onibus_catanduva/models/horasPacha.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';

class BairroJdTorre extends StatefulWidget {
  const BairroJdTorre({Key key}) : super(key: key);

  @override
  _BairroJdTorreState createState() => _BairroJdTorreState();
}

class _BairroJdTorreState extends State<BairroJdTorre> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Lorensid\n"
              "Jd. da Torre",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_JdTorre(),
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
import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/horasOnibus.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';

class BairroNteto extends StatefulWidget {
  const BairroNteto({Key key}) : super(key: key);

  @override
  _BairroNtetoState createState() => _BairroNtetoState();
}

class _BairroNtetoState extends State<BairroNteto> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Nosso teto",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_Onibus(),
          ),
          TextAtualizacao(),
          ButtonLink(),
        ],
      ),
    );
  }
}
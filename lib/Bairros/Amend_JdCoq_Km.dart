import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/Button_Link.dart';
import 'package:horarios_onibus_catanduva/models/Container_Obs.dart';
import 'package:horarios_onibus_catanduva/models/Horarios_Amen_JdCoq.dart';
import 'package:horarios_onibus_catanduva/models/TextAppbar.dart';
import 'package:horarios_onibus_catanduva/models/TextAtualiz.dart';
import 'package:horarios_onibus_catanduva/models/horasOnibus.dart';
import 'package:horarios_onibus_catanduva/models/nameBairros.dart';

class BairroJdCoqKm extends StatefulWidget {
  const BairroJdCoqKm({Key key}) : super(key: key);

  @override
  _BairroJdCoqKmState createState() => _BairroJdCoqKmState();
}

class _BairroJdCoqKmState extends State<BairroJdCoqKm> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAppBar(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NameBairros(text: "Amênd/ Jd.Coqueiros\n"
              "                Km7",),
          Divider(),
          ContainerObs(),
          Center(
            child:
            Horarios_JdCoq(),
          ),
          Divider(),
          TextAtualizacao(),
          ButtonLink(),
        ],
      ),
    );
  }
}
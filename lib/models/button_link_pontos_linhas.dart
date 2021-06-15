
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/models/url_pontos_linhas.dart';

class ButtonPontosLinhas extends StatelessWidget {
  const ButtonPontosLinhas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => launchPontosLinhas(),
      child: AutoSizeText("Clique aqui para ver a relação dos Pontos e Linhas",
      minFontSize: 10,),
    );
  }
}
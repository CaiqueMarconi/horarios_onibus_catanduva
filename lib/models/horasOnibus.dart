import 'package:flutter/material.dart';

class Horarios_Onibus extends StatefulWidget {
  const Horarios_Onibus({Key key}) : super(key: key);

  @override
  _Horarios_OnibusState createState() => _Horarios_OnibusState();
}

class _Horarios_OnibusState extends State<Horarios_Onibus> {

  String _texto = "";

  _horariosOnibus(){

    setState(() {
      _texto = "05:00    ------    15:00\n"
          "06:00    ------    16:00\n"
          "07:00    ------    17:00\n"
          "08:00    ------    18:00\n"
          "11:00    ------    19:00\n"
          "12:00\n"
          "13:00\n"
          "14:00\n";
    });
  }

  @override
  Widget build(BuildContext context) {

    _horariosOnibus();

    return Text(_texto,
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      height: 1.3
    ),
    );
  }
}


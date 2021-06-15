import 'package:flutter/material.dart';

class Horarios_Pacha extends StatefulWidget {
  const Horarios_Pacha({Key key}) : super(key: key);

  @override
  _Horarios_PachaState createState() => _Horarios_PachaState();
}

class _Horarios_PachaState extends State<Horarios_Pacha> {

  String _texto = "";

  _horariosOnibus(){

    setState(() {
      _texto = "05:00    ------    17:00\n"
            "06:00    ------    18:00\n"
          "07:00    ------    19:00\n"
          "08:00";
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


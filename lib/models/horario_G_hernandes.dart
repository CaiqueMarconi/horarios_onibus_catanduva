import 'package:flutter/material.dart';

class Horarios_G_hernandes extends StatefulWidget {
  const Horarios_G_hernandes({Key key}) : super(key: key);

  @override
  _Horarios_G_hernandesState createState() => _Horarios_G_hernandesState();
}

class _Horarios_G_hernandesState extends State<Horarios_G_hernandes> {

  String _texto = "";

  _horariosGhernandes(){

    setState(() {
      _texto = "04:50*  ------    17:05\n"
          "05:05    ------   18:05\n"
          "05:45    ------   19:05\n"
          "06:05\n"
          "07:05\n"
          "08:05\n";
    });
  }

  @override
  Widget build(BuildContext context) {

    _horariosGhernandes();

    return Text(_texto,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          height: 1.3
      ),
    );
  }
}


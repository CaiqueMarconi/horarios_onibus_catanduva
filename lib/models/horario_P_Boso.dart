import 'package:flutter/material.dart';

class Horarios_P_boso extends StatefulWidget {
  const Horarios_P_boso({Key key}) : super(key: key);

  @override
  _Horarios_P_bosoState createState() => _Horarios_P_bosoState();
}

class _Horarios_P_bosoState extends State<Horarios_P_boso> {

  String _texto = "";

  _horariosPedroBoso(){

    setState(() {
      _texto = "--- 05:45 ---\n"
          "--- 07:05 ---\n"
          "--- 18:00 ---";
    });
  }

  @override
  Widget build(BuildContext context) {

    _horariosPedroBoso();

    return Text(_texto,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          height: 1.3
      ),
    );
  }
}


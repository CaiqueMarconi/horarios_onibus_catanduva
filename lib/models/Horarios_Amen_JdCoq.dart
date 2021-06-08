import 'package:flutter/material.dart';

class Horarios_JdCoq extends StatefulWidget {
  const Horarios_JdCoq({Key key}) : super(key: key);

  @override
  _Horarios_JdCoqState createState() => _Horarios_JdCoqState();
}

class _Horarios_JdCoqState extends State<Horarios_JdCoq> {

  String _texto = "";

  _horariosJdcoqueiros(){

    setState(() {
      _texto = "--- 07:00 ---\n"
          "--- 08:00 ---\n"
          "--- 17:00 ---";
    });
  }

  @override
  Widget build(BuildContext context) {

    _horariosJdcoqueiros();

    return Text(_texto,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          height: 1.3
      ),
    );
  }
}


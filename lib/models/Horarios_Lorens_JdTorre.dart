import 'package:flutter/material.dart';

class Horarios_JdTorre extends StatefulWidget {
  const Horarios_JdTorre({Key key}) : super(key: key);

  @override
  _Horarios_JdTorreState createState() => _Horarios_JdTorreState();
}

class _Horarios_JdTorreState extends State<Horarios_JdTorre> {

  String _texto = "";

  _horariosJdTorre(){

    setState(() {
      _texto = "--- 06:00 ---\n"
          "--- 07:00 ---\n"
          "--- 17:00 ---";
    });
  }

  @override
  Widget build(BuildContext context) {

    _horariosJdTorre();

    return Text(_texto,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          height: 1.3
      ),
    );
  }
}


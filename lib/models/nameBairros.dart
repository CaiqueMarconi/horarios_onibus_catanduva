import 'package:flutter/material.dart';

class NameBairros extends StatelessWidget {

  final String text;

  const NameBairros({
    Key key,this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
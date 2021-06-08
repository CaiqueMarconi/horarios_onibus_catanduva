

import 'package:flutter/material.dart';

class RowsBairros extends StatelessWidget {

  final String text;
  final String text1;
  final String text2;
  final VoidCallback onpressed;
  final VoidCallback onpressed2;
  final VoidCallback onpressed3;

  const RowsBairros({ Key key, this.text, this.text1, this.text2, this.onpressed, this.onpressed2, this.onpressed3 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(08, 0, 08, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: onpressed,
              child: Text(text)),
          ElevatedButton(
              onPressed: onpressed2,
              child: Text(text1)),
          ElevatedButton(
              onPressed: onpressed3,
              child: Text(text2)),
          /*ElevatedButton(
              onPressed: (){},
              child: Text(text3)),*/

        ],
      ),
    );
  }
}

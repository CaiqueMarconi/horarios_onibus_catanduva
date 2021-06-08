import 'package:flutter/material.dart';

class ContainerObs extends StatelessWidget {
  const ContainerObs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      padding: EdgeInsets.all(08),
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(16)),
      child: Text(
        "Obs: Todos os horários referem-se as saidas feitas do Terminal Urbano,"
            " exceto (*) com saida feita da garagem da Viação Suzano",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
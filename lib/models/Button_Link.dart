import 'package:flutter/material.dart';

import 'UrlRotas.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 05, 20, 10),
      child: ElevatedButton(
        onPressed: () => launchURL(),
        child: Text("Clique aqui para ver rotas"),
      ),
    );
  }
}
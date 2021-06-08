import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:horarios_onibus_catanduva/Home_Page.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({Key key}) : super(key: key);

  @override
  _SplashScreennState createState() => _SplashScreennState();
}

class _SplashScreennState extends State<SplashScreenn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreen(
          backgroundColor: Colors.blue,
          seconds: 3,
          navigateAfterSeconds: HomePage(),
        ),
        Center(
          child: AvatarGlow(
              child: Material(
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black12,
                  child:Container(
                    height: MediaQuery.of(context).size.height*.36,
                    child: Image.asset('images/imagemEditada2.png',
                      height: MediaQuery.of(context).size.height*.36,
                    ),
                  ),
                ),
              ),
              endRadius: 180),
        )
      ],
    );
  }
}

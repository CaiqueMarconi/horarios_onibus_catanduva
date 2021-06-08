import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:horarios_onibus_catanduva/SplashScreen.dart';
import 'AdMob/Ad_Banner.dart';
import 'Home_Page.dart';
import 'package:provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  runApp(

      Provider.value(value: adState,
          builder: (context, child) => Myapp(
          )));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'My list of jokes',
      //home: HomePage(),
      home: SplashScreenn(),
    );
  }
}
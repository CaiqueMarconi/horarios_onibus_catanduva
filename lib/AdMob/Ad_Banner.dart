import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  Future<InitializationStatus> initialization;

  AdState(this.initialization);

  String get bannerAdUnitId =>
     // Platform.isAndroid ? 'ca-app-pub-9217945845676922/4142753708' : '';
      Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId2 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/3781938856' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId3 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/6564014862' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId4 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/8842693845' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId5 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/3746279833' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId6 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/4903448834' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId7 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/1930689184' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';

  String get bannerAdUnitId8 =>
      //Platform.isAndroid ? 'ca-app-pub-9217945845676922/1120116491' : '';
        Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : '';


  AdListener get adListener => _adListener;

  AdListener _adListener = AdListener(
    // Called when an ad is successfully received.
    onAdLoaded: (Ad ad) => print('Ad loaded. ${ad.adUnitId}'),
    // Called when an ad request failed.
    onAdFailedToLoad: (Ad ad, LoadAdError error) {
      ad.dispose();
      print('Ad failed to load: $error');
    },
    // Called when an ad opens an overlay that covers the screen.
    onAdOpened: (Ad ad) => print('Ad opened. ${ad.adUnitId}'),
    // Called when an ad removes an overlay that covers the screen.
    onAdClosed: (Ad ad) {
      ad.dispose();
      print('Ad closed. ${ad.adUnitId}');
    },
    // Called when an ad is in the process of leaving the application.
    onApplicationExit: (Ad ad) => print('Left application.'),
  );
}
//ca-app-pub-3940256099942544~3347511713
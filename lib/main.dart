import 'package:app_it/update/DivisiPro.dart';
import 'package:flutter/material.dart';
import 'package:app_it/splash_screen.dart';
import 'UpdateApp.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/services.dart';

void main() async 
{
   var device = ["789A24015699F2E961D2F2989B43EE28"];
 WidgetsFlutterBinding.ensureInitialized();
 
 await MobileAds.instance.initialize();
 

 RequestConfiguration requestConfiguration = RequestConfiguration(
  testDeviceIds: device );
   MobileAds.instance.updateRequestConfiguration(requestConfiguration);

  runApp( MyApp());
}

class MyApp extends StatefulWidget {

   _MyApp createState() => _MyApp();
}
  
  class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpdateApp(),
    );
  }
  }
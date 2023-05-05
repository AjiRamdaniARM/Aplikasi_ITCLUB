import 'package:flutter/material.dart';
import 'package:app_it/splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/services.dart';

void main() async 
{
  var device = ["D0C0D0CE37FC4D17ECD2CCEDEDD8583"];
 WidgetsFlutterBinding.ensureInitialized();
 
 await MobileAds.instance.initialize();
 

 RequestConfiguration requestConfiguration = RequestConfiguration(
  testDeviceIds: device );
  MobileAds.instance.updateRequestConfiguration(requestConfiguration);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

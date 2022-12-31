import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  // video controller
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_3vbOcw.json',
            controller: _controller, onLoaded: (compos) {
          _controller
            ..duration = compos.duration
            ..forward().then((value) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            });
        }),
        Center(
          child: (Text(
            'Welcome IT Club Lovers',
            style: TextStyle(
                fontFamily: 'Valken',
                color: Color.fromRGBO(35, 225, 189, 1),
                fontSize: 30),
          )),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
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
    final maxLines = 1;
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
        Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: GradientText(
                'Welcome IT Club Lovers',
                style: TextStyle(fontFamily: 'Valken', fontSize: 30),
                maxLines: maxLines,
                colors: [
                  Color.fromARGB(255, 87, 211, 91),
                  Color.fromARGB(255, 10, 254, 230)
                ],
              ),
            ))
      ]),
    );
  }
}

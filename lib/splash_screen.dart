import 'package:app_it/Home.dart';
import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:lottie/lottie.dart';
import 'package:app_it/nav.dart';
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
      bottomNavigationBar: Container(
          height: 100,
          alignment: Alignment.center,
          child: Text.rich(
            TextSpan(text: "CopyRight By ", children: <InlineSpan>[
              TextSpan(
                  text: 'ARI DEV',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-Bold',
                      fontSize: 18))
            ]),
            style: TextStyle(fontFamily: "Robotto", letterSpacing: 1),
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_3vbOcw.json',
            controller: _controller, onLoaded: (compos) {
          _controller
            ..duration = compos.duration
            ..forward().then((value) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Navbar()));
            });
        }),
        Container(
            width: MediaQuery.of(context).size.width,
            child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 10, maxWidth: 100),
                child: Center(
                    child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: GradientText(
                      'Welcome IT Club Lovers',
                      style: TextStyle(fontFamily: 'Valken', fontSize: 25),
                      maxLines: 2,
                      colors: [
                        Color.fromARGB(255, 87, 211, 91),
                        Color.fromARGB(255, 10, 254, 230)
                      ],
                    ),
                  ),
                ))))
      ]),
    );
  }
}

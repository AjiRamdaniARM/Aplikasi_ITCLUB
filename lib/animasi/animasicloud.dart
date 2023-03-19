import 'package:app_it/main.dart';
import 'package:flutter/material.dart';
import 'package:app_it/Cloud.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AnimasiC extends StatefulWidget {
  const AnimasiC({Key? key}) : super(key: key);

  @override
  _AnimasiC createState() => _AnimasiC();
}

class _AnimasiC extends State<AnimasiC> with TickerProviderStateMixin {
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
            'https://assets9.lottiefiles.com/private_files/lf30_qxtwozrz.json',
            controller: _controller, onLoaded: (compos) {
          _controller
            ..duration = compos.duration
            ..forward().then((value) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cloud()));
            });
        }),
        Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Center(
              child: GradientText(
                'CLOUD',
                style: TextStyle(fontSize: 40.0, fontFamily: 'Valken'),
                colors: [
                  Colors.blue,
                  Color.fromARGB(255, 12, 88, 220),
                ],
              ),
            ))
      ]),
    );
  }
}

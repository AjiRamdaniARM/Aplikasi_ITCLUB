import 'package:app_it/main.dart';
import 'package:flutter/material.dart';
import 'package:app_it/Contact.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AnimasiCo extends StatefulWidget {
  const AnimasiCo({Key? key}) : super(key: key);

  @override
  _AnimasiCo createState() => _AnimasiCo();
}

class _AnimasiCo extends State<AnimasiCo> with TickerProviderStateMixin {
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
            'https://assets7.lottiefiles.com/packages/lf20_zvhbb9ap.json',
            controller: _controller, onLoaded: (compos) {
          _controller
            ..duration = compos.duration
            ..forward().then((value) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contact(
                            title: title,
                            desc: desc,
                          )));
            });
        }),
        Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Center(
              child: GradientText(
                'CONTACT US',
                style: TextStyle(fontSize: 40.0, fontFamily: 'Valken'),
                colors: [
                  Color.fromARGB(255, 100, 243, 33),
                  Color.fromARGB(255, 36, 132, 12),
                ],
              ),
            ))
      ]),
    );
  }
}

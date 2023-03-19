import 'package:app_it/Contact.dart';
import 'package:app_it/Home.dart';
import 'package:app_it/Profile.dart';
import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:lottie/lottie.dart';
import 'package:app_it/nav.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _Navbar createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  int _SelectedIndex = 0;
  final list = [
    Home(),
    Contact(),
    ProfileIt(),
  ];
  void _onitemtap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _SelectedIndex,
          onTap: _onitemtap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: 'Contact'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}

import 'package:app_it/Home.dart';
import 'package:app_it/Profile.dart';
import 'package:app_it/animasi/animasicontact.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/responsive/mobile/contactmobile.dart';
import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri salwa = Uri.parse('https://wa.link/dmy6gl');
final Uri ibufitri = Uri.parse('https://wa.link/psdkly');
final Uri aji = Uri.parse('https://wa.link/g5be8b');
final Uri dzikri = Uri.parse('https://wa.link/ti9vfl');
final Uri ripal = Uri.parse('https://wa.link/aujl13');
final Uri rizky = Uri.parse('https://wa.link/tf9g87');
final Uri nausa = Uri.parse('https://wa.link/bivdk7');
final Uri kamila = Uri.parse('https://wa.link/x5utmr');
final Uri dhira = Uri.parse('https://wa.link/mc7bm0');
final Uri andhika = Uri.parse('https://wa.link/xvkfyf');
final Uri hafidz = Uri.parse("https://wa.link/hnsuof");

class Contact extends StatelessWidget {
  //constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Responsive(
          tablet: Container(
            child: Text('huuh'),
          ),
          mobile: Contactmobile(key: key),
        ),
      )),
    );
  }
}

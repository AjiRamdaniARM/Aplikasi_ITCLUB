import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/responsive/mobile/homeresponsive.dart';
import 'package:app_it/responsive/mobile/settings.dart';
import 'package:flutter/material.dart';
import 'package:app_it/main.dart';

import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

// data link API
final Uri _url = Uri.parse('https://flutter.dev');
final Uri instagram = Uri.parse('https://www.instagram.com/itclubsmkti/');
final Uri youtube = Uri.parse('https://www.youtube.com/@itclub_smkti4962');
final Uri tiktok =
    Uri.parse('https://www.tiktok.com/@itclub1?_t=8YWcjztUc1B&_r=1');
final Uri aksesAnggota = Uri.parse(
    'https://armoviefilm.000webhostapp.com/akses_anggota/akses_anggota.html');
final Uri Admin = Uri.parse('https://portofolio-3c1ab.web.app/');

class ProfileIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _mailto() async {
      const url = 'mailto:itclubsmkti@gmail.com?subject=Product Inquiry&body=';
      print("test url1");
      if (await canLaunch(url)) {
        print("test url2");
        await launch(url);
      } else {
        print("test url3");
      }
    }

    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Responsive(
        tablet: Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          width: 907,
          height: 900,

          child: Stack(children: <Widget>[
            Positioned(
                top: 60,
                left: 5,
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Valken',
                      fontSize: 40,
                      color: Color.fromARGB(255, 0, 119, 255)),
                )),
            Positioned(
                top: 49,
                left: 300,
                child: IconButton(
                  iconSize: 50,
                  icon: Image.asset('assets/image/Back.png'),
                  onPressed: () => {Navigator.pop(context)},
                )),

            // shape profile

            Positioned(
              top: 150,
              child: Container(
                width: 360,
                height: 408,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(37),
                    topRight: Radius.circular(37),
                    bottomLeft: Radius.circular(37),
                    bottomRight: Radius.circular(37),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(1, 0),
                        blurRadius: 9)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(children: [
                  Positioned(
                      left: 50,
                      child: Image.asset(
                        'assets/image/logo.png',
                        width: 255,
                      )),
                  Positioned(
                      top: 210,
                      left: 105,
                      child: Text(
                        'IT CLUB',
                        style: TextStyle(
                            fontFamily: 'Valken',
                            fontSize: 45,
                            color: Colors.blue),
                      )),
                  Positioned(
                    top: 260,
                    left: 70,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(
                          'SMKS TERPADU IBAADURRAHMAN',
                          textStyle: TextStyle(),
                        ),
                        FadeAnimatedText(
                          'SMKS PARAWISATA PERCIK MADANI',
                        ),
                      ],
                      repeatForever: true,
                    ),
                  ),
                  // element medsos
                  Positioned(
                      top: 300,
                      left: 110,
                      child: Container(
                          width: 150,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Link(
                                      uri: instagram,
                                      builder: (context, Ig) => InkWell(
                                            child: Container(
                                              child: Image.asset(
                                                  'assets/image/Ig.png'),
                                            ),
                                            onTap: Ig,
                                          ))),
                              Expanded(
                                  child: Link(
                                      uri: tiktok,
                                      builder: (context, Tt) => (InkWell(
                                            child: Container(
                                              child: Image.asset(
                                                'assets/image/TT.png',
                                              ),
                                            ),
                                            onTap: Tt,
                                          )))),
                              Expanded(
                                  child: Link(
                                      target: LinkTarget.blank,
                                      uri: youtube,
                                      builder: (context, Yt) => InkWell(
                                            child: Container(
                                              child: Image.asset(
                                                  'assets/image/Yt.png'),
                                            ),
                                            onTap: Yt,
                                          )))
                            ],
                          )))
                ]),
              ),
            ),
            // daftar anggota
            Positioned(
                top: 590,
                left: 12,
                child: Link(
                    target: LinkTarget.blank,
                    uri: aksesAnggota,
                    builder: (context, AksesAnggota) => InkWell(
                          child: Container(
                            width: 334,
                            height: 66,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(
                                  color: Color.fromRGBO(218, 218, 218, 1),
                                  width: 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 25,
                                  left: 100,
                                  child: Text(
                                    'Anggota Extrakulikuler',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16),
                                  ))
                            ]),
                          ),
                          onTap: AksesAnggota,
                        ))),
            // akhir daftar anggota
            // daftar tentang
            Positioned(
                top: 670,
                left: 12,
                child: InkWell(
                  child: Container(
                    width: 334,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 25,
                          left: 120,
                          child: Text(
                            'Tentang IT Club',
                            style: TextStyle(fontSize: 16),
                          )),
                    ]),
                  ),
                  onTap: () => {},
                )),
            // akhir tentang
            // daftar bantuan
            Positioned(
                top: 750,
                left: 12,
                child: InkWell(
                  child: Container(
                    width: 334,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 25,
                          left: 140,
                          child: Text(
                            'Bantuan',
                            style: TextStyle(fontSize: 16),
                          ))
                    ]),
                  ),
                  onTap: _mailto,
                )),

            // component link admin
            Positioned(
                top: 850,
                left: 20,
                child: Link(
                    target: LinkTarget.blank,
                    uri: Admin,
                    builder: (context, HalamanAdmin) => InkWell(
                          child: Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Text(
                              'Developer By Aji Ramdani',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 243, 33, 33)),
                            ),
                          ),
                          onTap: HalamanAdmin,
                        )))
            // logo IT
          ]),

          // daftar bantuan
        ),
        mobile: Settings(),
      ),
    )));
  }
}

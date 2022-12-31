import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri instagram = Uri.parse('https://www.instagram.com/itclubsmkti/');
final Uri youtube = Uri.parse('https://www.youtube.com/@itclub_smkti4962');
final Uri tiktok =
    Uri.parse('https://www.tiktok.com/@itclub1?_t=8YWcjztUc1B&_r=1');
final Uri aksesAnggota = Uri.parse(
    'https://armoviefilm.000webhostapp.com/akses_anggota/akses_anggota.html');
final Uri Admin = Uri.parse('https://portofolio-3c1ab.web.app/');

class Profile extends StatelessWidget {
  //constructor
  Profile({required this.title, required this.desc});

  //properti
  String title;
  String desc;

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
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        width: 907,
        height: 900,
        decoration: BoxDecoration(),
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
              child: Stack(children: <Widget>[
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
                    child: Text(
                      'SMKS TERPADU IBADURRAHMAN',
                      style: TextStyle(fontSize: 16),
                    )),
                Positioned(
                  top: 280,
                  left: 80,
                  child: Row(
                    children: <Widget>[
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: instagram,
                              builder: (context, Ig) => IconButton(
                                    icon: Image.asset('assets/image/Ig.png'),
                                    iconSize: 62,
                                    onPressed: Ig,
                                  ))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: tiktok,
                              builder: (context, Tt) => IconButton(
                                    iconSize: 35,
                                    icon: Image.asset(
                                      'assets/image/TT.png',
                                    ),
                                    onPressed: Tt,
                                  ))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: youtube,
                              builder: (context, Yt) => IconButton(
                                    iconSize: 62,
                                    icon: Image.asset(
                                      'assets/image/Yt.png',
                                    ),
                                    onPressed: Yt,
                                  ))),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          // daftar anggota
          Positioned(
              top: 590,
              left: 12,
              child: Link(
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
                            'Develover By Aji Ramdani',
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
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

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

class Contact extends StatelessWidget {
  //constructor
  Contact({required this.title, required this.desc});
  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      margin: EdgeInsets.only(left: 20, top: 30),
      width: 907,
      height: 900,
      decoration: BoxDecoration(),
      child: Stack(children: <Widget>[
        Positioned(
          left: 70,
          top: 50,
          child: Column(
            children: <Widget>[
              Text(
                'CONTACT',
                style: TextStyle(
                    fontFamily: 'Valken',
                    fontSize: 32,
                    color: Color.fromRGBO(252, 93, 61, 1)),
              ),
              Text(
                'Pengurus IT Club',
                style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    fontSize: 32,
                    color: Color.fromRGBO(252, 93, 61, 1)),
              )
            ],
          ),
        ),
        Positioned(
          top: 150,
          child: Container(
            width: 376,
            height: 609,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(41),
                  topRight: Radius.circular(41),
                  bottomLeft: Radius.circular(41),
                  bottomRight: Radius.circular(41),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(5, 4),
                    blurRadius: 8,
                  ),
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color.fromRGBO(255, 47, 0, 1),
                  width: 1,
                )),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 30,
                  left: 25,
                  child: Row(
                    children: <Widget>[
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: ibufitri,
                              builder: (context, IbuFitri) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 3,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 70,
                                            child: Text(
                                              'Bu Fitri',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 20,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            ))
                                      ]),
                                    ),
                                    onTap: IbuFitri,
                                  ))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: aji,
                              builder: (context, Aji) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 60,
                                            child: Text(
                                              'Aji Ramdani',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Aji,
                                  ))),
                    ],
                  )),
              // akhir daftar 1

              Positioned(
                  top: 100,
                  left: 25,
                  child: Row(
                    children: <Widget>[
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: dzikri,
                              builder: (context, zikri) => InkWell(
                                  child: Container(
                                    width: 170,
                                    height: 63,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        top: 8,
                                        left: 1,
                                        child: Container(
                                          width: 163,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.25),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 2)
                                              ],
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              border: Border.all(
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  width: 1)),
                                        ),
                                      ),
                                      Positioned(
                                          child: Image.asset(
                                        'assets/image/Wa.webp',
                                        width: 50,
                                      )),
                                      Positioned(
                                          top: 23,
                                          left: 65,
                                          child: Text(
                                            'Dzikri M',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontFamily: 'Valken',
                                                color: Color.fromRGBO(
                                                    146, 149, 153, 1),
                                                fontSize: 18,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                    ]),
                                  ),
                                  onTap: zikri))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: ripal,
                              builder: (context, Ripal) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 70,
                                            child: Text(
                                              'Ripal H',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Ripal,
                                  ))),
                    ],
                  )),
              // akhir daftar 2
              Positioned(
                  top: 170,
                  left: 25,
                  child: Row(
                    children: <Widget>[
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: salwa,
                              builder: (context, Salwak) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 65,
                                            child: Text(
                                              'Salwa K',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Salwak,
                                  ))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: kamila,
                              builder: (context, Kamil) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 70,
                                            child: Text(
                                              'Kamila',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Kamil,
                                  )))
                    ],
                  )),
              Positioned(
                  top: 240,
                  left: 25,
                  child: Row(
                    children: <Widget>[
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: nausa,
                              builder: (context, Nausa) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 65,
                                            child: Text(
                                              'Nausa K',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Nausa,
                                  ))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: dhira,
                              builder: (context, Dhira) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 70,
                                            child: Text(
                                              'Dhira',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Dhira,
                                  ))),
                    ],
                  )),
              Positioned(
                  top: 310,
                  left: 25,
                  child: Row(
                    children: <Widget>[
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: rizky,
                              builder: (context, Rizky) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 65,
                                            child: Text(
                                              'Rizky M',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: Rizky,
                                  ))),
                      Positioned(
                          child: Link(
                              target: LinkTarget.blank,
                              uri: andhika,
                              builder: (context, andhika) => InkWell(
                                    child: Container(
                                      width: 170,
                                      height: 63,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 8,
                                          left: 1,
                                          child: Container(
                                            width: 163,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                border: Border.all(
                                                    color: Color.fromRGBO(
                                                        146, 149, 153, 1),
                                                    width: 1)),
                                          ),
                                        ),
                                        Positioned(
                                            child: Image.asset(
                                          'assets/image/Wa.webp',
                                          width: 50,
                                        )),
                                        Positioned(
                                            top: 23,
                                            left: 70,
                                            child: Text(
                                              'Andhika',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Valken',
                                                  color: Color.fromRGBO(
                                                      146, 149, 153, 1),
                                                  fontSize: 18,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]),
                                    ),
                                    onTap: andhika,
                                  ))),
                    ],
                  )),
            ]),
          ),
        ),
        Container(
            child: Container(
          margin: EdgeInsets.only(left: 5, top: 780),
          child: Row(children: <Widget>[
            Positioned(
                top: 49,
                left: 300,
                child: IconButton(
                  iconSize: 50,
                  icon: Image.asset('assets/image/Back.png'),
                  onPressed: () => {Navigator.pop(context)},
                )),
            Positioned(
                child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      'Back To Home',
                      style: TextStyle(
                        fontFamily: 'Valken',
                        fontSize: 36,
                        color: Color.fromRGBO(255, 47, 0, 1),
                      ),
                    ))),
          ]),
        )),
      ]),
    )));
  }
}

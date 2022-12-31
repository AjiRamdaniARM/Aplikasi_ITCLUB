import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri karyait = Uri.parse(
    'https://drive.google.com/drive/folders/1ovyhibk3vHfSuZrm_lq8I87bX3Q23dEn?usp=sharing');
final Uri hariguru = Uri.parse(
    'https://drive.google.com/drive/folders/1rjMKXwb1vPDJmCDKzoDLiQ3SPxnETgj7?usp=sharing');
final Uri milad = Uri.parse(
    'https://drive.google.com/drive/folders/1-3bAIXYnCeUBCLXUJeJvc8F727DVcOQq?usp=sharing');

class Cloud extends StatelessWidget {
  //constructor
  Cloud({required this.title, required this.desc});
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
            top: 50,
            left: 130,
            child: Text(
              'Penyimpanan',
              style: TextStyle(
                  fontFamily: 'Valken',
                  color: Color.fromRGBO(139, 195, 74, 1),
                  fontSize: 35),
            )),
        Positioned(
            top: 35,
            left: 0,
            child: IconButton(
              iconSize: 50,
              icon: Image.asset('assets/image/Back.png'),
              onPressed: () => {Navigator.pop(context)},
            )),
        Positioned(
            top: 120,
            left: 0,
            child: Container(
              width: 370,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                    color: Color.fromRGBO(180, 230, 110, 1), width: 1),
              ),
              child: Stack(children: <Widget>[
                Positioned(
                    top: 15,
                    left: 130,
                    child: Text(
                      'GOOGLE DRIVE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(139, 195, 74, 1)),
                    ))
              ]),
            )),
        Positioned(
          top: 200,
          left: 12,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/Folder.png',
                      width: 78,
                    ),
                  ),
                  Positioned(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              'https://drive.google.com/drive/folders/1E-leeP4bo2-fxU8B1Yzdqe3_ffqGNBbG?usp=sharing'),
                          builder: (context, MtahanLogo) => InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 255,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 4),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      color: Color.fromRGBO(146, 149, 153, 1),
                                      width: 1,
                                    ),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 12,
                                        left: 20,
                                        child: Text(
                                          'Mentahan Logo',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 161, 167, 161)),
                                        )),
                                  ]),
                                ),
                                onTap: MtahanLogo,
                              ))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/Folder.png',
                      width: 78,
                    ),
                  ),
                  Positioned(
                      child: Link(
                          uri: karyait,
                          builder: (context, KaryaIt) => InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 255,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 4),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      color: Color.fromRGBO(146, 149, 153, 1),
                                      width: 1,
                                    ),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 12,
                                        left: 20,
                                        child: Text(
                                          'Karya IT Design Graphic',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 161, 167, 161)),
                                        )),
                                  ]),
                                ),
                                onTap: KaryaIt,
                              ))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/Folder.png',
                      width: 78,
                    ),
                  ),
                  Positioned(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: hariguru,
                          builder: (context, HariGuru) => InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 255,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 4),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      color: Color.fromRGBO(146, 149, 153, 1),
                                      width: 1,
                                    ),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 12,
                                        left: 20,
                                        child: Text(
                                          'Data Poto Hari Guru',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 161, 167, 161)),
                                        )),
                                  ]),
                                ),
                                onTap: HariGuru,
                              ))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/Folder.png',
                      width: 78,
                    ),
                  ),
                  Positioned(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: milad,
                          builder: (context, Milad) => InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 255,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 4),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      color: Color.fromRGBO(146, 149, 153, 1),
                                      width: 1,
                                    ),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 12,
                                        left: 20,
                                        child: Text(
                                          'Dokumentasi Milad',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 161, 167, 161)),
                                        )),
                                  ]),
                                ),
                                onTap: Milad,
                              ))),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            top: 500,
            left: 40,
            child: Container(
              width: 300,
              child: Image.asset('assets/image/ShapeCloud.png'),
            ))
      ]),
    )));
  }
}

import 'dart:io';

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
              child: Container(
                  width: 360,
                  height: 211,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33),
                      bottomLeft: Radius.circular(33),
                      bottomRight: Radius.circular(33),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment(6.123234262925839e-17, 1),
                        end: Alignment(-1, 6.123234262925839e-17),
                        colors: [
                          Color.fromARGB(255, 17, 230, 38),
                          Color.fromARGB(255, 17, 175, 27)
                        ]),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'CONTACT',
                          style: TextStyle(
                            fontFamily: 'Valken',
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 100),
                          child: Text(
                            'Akses Contact Pengurus',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.all(20),
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()))
                        },
                      ),
                    ],
                  ))),
          // daftar contact
          Container(
            margin: EdgeInsets.only(top: 250, left: 20),
            child: Stack(
              children: <Widget>[
                Expanded(
                    child: Link(
                        target: LinkTarget.blank,
                        uri: ibufitri,
                        builder: (context, IbuFitri) => InkWell(
                              child: Container(
                                  width: 375,
                                  height: 75,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: <Widget>[
                                    Container(
                                        width: 326,
                                        height: 55,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            'https://pps.whatsapp.net/v/t61.24694-24/321172830_499560462245015_140409785024768514_n.jpg?ccb=11-4&oh=01_AdQ__cwfHm5yuVnDZQUwQWzp9MB3R02wokrh4vDpUFUA4g&oe=63C7EC0A')),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                55, 55)),
                                                  ))),
                                          Positioned(
                                              top: 12,
                                              left: 68,
                                              child: Text(
                                                'Bu Fitri',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 27,
                                              left: 68,
                                              child: Text(
                                                'Pembina',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        120, 113, 113, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 20,
                                              left: 267,
                                              child: Text(
                                                'WhatsApp',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        115, 108, 108, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))
                                  ])),
                              onTap: IbuFitri,
                            ))),
                Expanded(
                    child: Link(
                        target: LinkTarget.blank,
                        uri: aji,
                        builder: (context, Aji) => InkWell(
                              child: Container(
                                  margin: EdgeInsets.only(top: 80),
                                  width: 375,
                                  height: 75,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: <Widget>[
                                    Container(
                                        width: 326,
                                        height: 55,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            'https://pps.whatsapp.net/v/t61.24694-24/315367519_695323188960475_5199948761222407565_n.jpg?ccb=11-4&oh=01_AdQVsSSYPxTr4UzuOiOjWcdgCTL27OnC3fEx9Ors2EvDag&oe=63C93766')),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                55, 55)),
                                                  ))),
                                          Positioned(
                                              top: 12,
                                              left: 68,
                                              child: Text(
                                                'Aji Ramdani',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 27,
                                              left: 68,
                                              child: Text(
                                                'Ketua',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        120, 113, 113, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 20,
                                              left: 267,
                                              child: Text(
                                                'WhatsApp',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        115, 108, 108, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))
                                  ])),
                              onTap: Aji,
                            ))),
                Expanded(
                    child: Link(
                        target: LinkTarget.blank,
                        uri: dzikri,
                        builder: (context, Zikri) => InkWell(
                              child: Container(
                                  margin: EdgeInsets.only(top: 160),
                                  width: 375,
                                  height: 75,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: <Widget>[
                                    Container(
                                        width: 326,
                                        height: 55,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            'https://pps.whatsapp.net/v/t61.24694-24/310115916_652059946577807_5768844652992555401_n.jpg?ccb=11-4&oh=01_AdSEOcLrWCgLY-GJ4jQUGHlxoLCXJDwKWVsfNXwVo3gJsw&oe=63C95EFA')),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                55, 55)),
                                                  ))),
                                          Positioned(
                                              top: 12,
                                              left: 68,
                                              child: Text(
                                                'Dzikri Maulana',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 27,
                                              left: 68,
                                              child: Text(
                                                'Editor',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        120, 113, 113, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 20,
                                              left: 267,
                                              child: Text(
                                                'WhatsApp',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        115, 108, 108, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))
                                  ])),
                              onTap: Zikri,
                            ))),
                Expanded(
                    child: Link(
                        target: LinkTarget.blank,
                        uri: dhira,
                        builder: (context, Dhira) => InkWell(
                              child: Container(
                                  margin: EdgeInsets.only(top: 240),
                                  width: 375,
                                  height: 75,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: <Widget>[
                                    Container(
                                        width: 326,
                                        height: 55,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            'https://pps.whatsapp.net/v/t61.24694-24/317659497_133889025935220_4243274643690792023_n.jpg?ccb=11-4&oh=01_AdS6BwnDaZYuZ9XOuGq2JM1MibxICsRLCn7FXpjI6qd_-Q&oe=63C940C1')),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                55, 55)),
                                                  ))),
                                          Positioned(
                                              top: 12,
                                              left: 68,
                                              child: Text(
                                                'Dhira Windari',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 27,
                                              left: 68,
                                              child: Text(
                                                'Jurnalist',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        120, 113, 113, 1),
                                                    fontFamily: 'Arial',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 20,
                                              left: 267,
                                              child: Text(
                                                'WhatsApp',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        115, 108, 108, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))
                                  ])),
                              onTap: Dhira,
                            ))),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}

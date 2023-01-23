import 'package:app_it/Tentang.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/responsive/mobile/cloudmobile.dart';
import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri karyait = Uri.parse(
    'https://drive.google.com/drive/folders/1ovyhibk3vHfSuZrm_lq8I87bX3Q23dEn?usp=sharing');
final Uri hariguru = Uri.parse(
    'https://drive.google.com/drive/folders/1rjMKXwb1vPDJmCDKzoDLiQ3SPxnETgj7?usp=sharing');
final Uri milad = Uri.parse(
    'https://drive.google.com/drive/folders/1-3bAIXYnCeUBCLXUJeJvc8F727DVcOQq?usp=sharing');
final Uri mtlogo = Uri.parse(
    'https://drive.google.com/drive/folders/1E-leeP4bo2-fxU8B1Yzdqe3_ffqGNBbG?usp=share_link');

class Cloud extends StatelessWidget {
  //constructor
  Cloud({required this.title, required this.desc});
  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Responsive(
      tablet: Container(
          child: Stack(children: <Widget>[
        Expanded(
            child: Positioned(
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
                            Color.fromARGB(255, 0, 229, 255),
                            Color.fromARGB(255, 6, 116, 242)
                          ]),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'CLOUD',
                            style: TextStyle(
                              fontFamily: 'Valken',
                              fontSize: 90,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 100),
                            child: Text(
                              'Penyimpanan Google Drive',
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
                    )))),

        // shape daftar penyimpanan
        Expanded(
          child: Positioned(
            top: 230,
            child: Container(
              width: 350,
              height: 211,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 0),
                        blurRadius: 8),
                  ],
                  border: Border.all(
                      color: Color.fromARGB(255, 5, 22, 255), width: 1),
                  color: Colors.white),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Stack(children: [
                              Link(
                                target: LinkTarget.blank,
                                uri: mtlogo,
                                builder: (context, MtLogo) => InkWell(
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      ),
                                      color: Color.fromARGB(123, 0, 110, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 30, 0, 255),
                                        width: 1,
                                      ),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(
                                                  child: IconButton(
                                            iconSize: 1,
                                            onPressed: () => {},
                                            icon: Image.asset(
                                              'assets/image/folder.webp',
                                              width: 30,
                                            ),
                                          ))),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Text(
                                                'Mentahan Logo',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                  onTap: MtLogo,
                                ),
                              )
                            ])),
                            Expanded(
                                child: Stack(children: [
                              Link(
                                target: LinkTarget.blank,
                                uri: karyait,
                                builder: (context, KaryaIt) => InkWell(
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      ),
                                      color: Color.fromARGB(123, 0, 110, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 30, 0, 255),
                                        width: 1,
                                      ),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(
                                                  child: IconButton(
                                            iconSize: 1,
                                            onPressed: () => {},
                                            icon: Image.asset(
                                              'assets/image/folder.webp',
                                              width: 30,
                                            ),
                                          ))),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Text(
                                                'Karya IT',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ]),
                                  ),
                                  onTap: KaryaIt,
                                ),
                              )
                            ])),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Stack(children: [
                              Link(
                                target: LinkTarget.blank,
                                uri: milad,
                                builder: (context, Milad) => InkWell(
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      ),
                                      color: Color.fromARGB(123, 0, 110, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 30, 0, 255),
                                        width: 1,
                                      ),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(
                                                  child: IconButton(
                                            iconSize: 1,
                                            onPressed: () => {},
                                            icon: Image.asset(
                                              'assets/image/folder.webp',
                                              width: 30,
                                            ),
                                          ))),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Text(
                                                'Dokumentasi Milad',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                  onTap: Milad,
                                ),
                              )
                            ])),
                            Expanded(
                                child: Stack(children: [
                              Link(
                                target: LinkTarget.blank,
                                uri: hariguru,
                                builder: (context, HariGuru) => InkWell(
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      ),
                                      color: Color.fromARGB(123, 0, 110, 255),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 30, 0, 255),
                                        width: 1,
                                      ),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(
                                                  child: IconButton(
                                            iconSize: 1,
                                            onPressed: () => {},
                                            icon: Image.asset(
                                              'assets/image/folder.webp',
                                              width: 30,
                                            ),
                                          ))),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Text(
                                                'Dokumentasi Hari Guru',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ]),
                                  ),
                                  onTap: HariGuru,
                                ),
                              )
                            ])),
                          ],
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        // element ilustrasi
        Expanded(
            child: Positioned(
                top: 500,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Lottie.network(
                      'https://assets9.lottiefiles.com/packages/lf20_wuxlxvkh.json'),
                ))),
      ])),
      mobile: CloudMobile(),
    ))));
  }
}

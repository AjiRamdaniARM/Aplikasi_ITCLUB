import 'package:app_it/Home.dart';
import "package:flutter/material.dart";
import 'package:app_it/Cloud.dart';
import 'package:lottie/lottie.dart';
import 'package:app_it/responsive.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_it/main.dart';

class CloudMobile extends StatelessWidget {
  const CloudMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future openBrowserURL({
      required String url,
      bool inApp = false,
    }) async {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: inApp,
          forceWebView: inApp,
          enableJavaScript: true,
        );
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            heightFactor: 1.2,
            child: Padding(
              padding: EdgeInsets.all(10),
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
                          padding: EdgeInsets.all(10),
                          child: FittedBox(
                            child: Text(
                              'CLOUD',
                              style: TextStyle(
                                fontFamily: 'Valken',
                                fontSize: 80,
                                color: Colors.white,
                              ),
                            ),
                          )),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()))
                        },
                      ),
                    ],
                  )),
            )),
        Center(
          heightFactor: 1,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
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
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                final mtlogo =
                                    "https://drive.google.com/drive/folders/1E-leeP4bo2-fxU8B1Yzdqe3_ffqGNBbG?usp=share_link";
                                openBrowserURL(url: mtlogo, inApp: false);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
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
                                            margin: EdgeInsets.only(right: 20),
                                            child: FittedBox(
                                              child: Text(
                                                'Mentahan Logo',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                final karyaIt =
                                    "https://drive.google.com/drive/folders/1ovyhibk3vHfSuZrm_lq8I87bX3Q23dEn?usp=sharing";
                                openBrowserURL(url: karyaIt, inApp: false);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
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
                                            margin: EdgeInsets.only(right: 20),
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Karya IT Club',
                                                style: TextStyle(
                                                    fontSize: 100,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                        // roww 2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                final hariGuru =
                                    "https://drive.google.com/drive/folders/1rjMKXwb1vPDJmCDKzoDLiQ3SPxnETgj7?usp=sharing";
                                openBrowserURL(url: hariGuru, inApp: false);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
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
                                            margin: EdgeInsets.only(right: 20),
                                            child: FittedBox(
                                              child: Text(
                                                'Dokumetasi Hari Guru',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                final dMilad =
                                    "https://drive.google.com/drive/folders/1-3bAIXYnCeUBCLXUJeJvc8F727DVcOQq?usp=sharing";
                                openBrowserURL(url: dMilad, inApp: false);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
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
                                            margin: EdgeInsets.only(right: 20),
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Dokumentasi Milad',
                                                style: TextStyle(
                                                    fontSize: 100,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          heightFactor: 1,
          child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_wuxlxvkh.json')),
        )
      ],
    );
  }
}

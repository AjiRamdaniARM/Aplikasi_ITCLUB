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

    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Responsive(
          tablet: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 2.2,
                child: Stack(children: <Widget>[
                  Container(
                      height: 100,
                      child: Center(
                        child: Text(
                          'Setting Page',
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              fontSize: 20,
                              letterSpacing: 0.2,
                              color: Colors.blue.shade400),
                        ),
                      )),
                  Column(
                    children: [
                      FittedBox(
                        child: Container(
                          padding: EdgeInsets.only(top: 80, right: 250),
                          margin: EdgeInsets.all(10),
                          child: Text(
                            'Account',
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold', fontSize: 20),
                          ),
                        ),
                      ),

                      // button developer
                      InkWell(
                        onTap: () async {
                          final develop = 'https://portofolio-3c1ab.web.app/';
                          openBrowserURL(url: develop, inApp: false);
                        },
                        child: Container(
                            margin: EdgeInsets.all(19),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/1144/1144760.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text('Portofolio Developer'),
                                ),
                              ],
                            )),
                      ),
                      InkWell(
                        onTap: () async {
                          final develop = 'https://portofolio-3c1ab.web.app/';
                          openBrowserURL(url: develop, inApp: false);
                        },
                        child: Container(
                            margin: EdgeInsets.all(19),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/2521/2521610.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text('Tentang IT Club'),
                                ),
                              ],
                            )),
                      ),
                      InkWell(
                        onTap: () async {
                          final develop = 'https://portofolio-3c1ab.web.app/';
                          openBrowserURL(url: develop, inApp: false);
                        },
                        child: Container(
                            margin: EdgeInsets.all(19),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/999/999735.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text('Sekolah Eskul IT Club'),
                                ),
                              ],
                            )),
                      ),
                      FittedBox(
                        child: Container(
                          padding: EdgeInsets.only(top: 40, right: 250),
                          margin: EdgeInsets.all(10),
                          child: Text(
                            'Help',
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold', fontSize: 20),
                          ),
                        ),
                      ),

                      // button developer
                      InkWell(
                        onTap: () async {
                          final develop = 'https://portofolio-3c1ab.web.app/';
                          openBrowserURL(url: develop, inApp: false);
                        },
                        child: Container(
                            margin: EdgeInsets.all(19),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/6596/6596115.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text('Contact Developer'),
                                ),
                              ],
                            )),
                      ),
                      InkWell(
                        onTap: () async {
                          final develop = 'https://portofolio-3c1ab.web.app/';
                          openBrowserURL(url: develop, inApp: false);
                        },
                        child: Container(
                            margin: EdgeInsets.all(19),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/665/665049.png',
                                  width: 45,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text('Informasi Aplikasi'),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Silahkan bagi yang mau mendaftar di eskul kami atau disekolah untuk klik button nya !!',
                          style: TextStyle(
                              fontFamily: 'Robotto',
                              fontSize: 10,
                              color: Colors.grey.shade500),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(10),
                            width: 327,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.5),
                                topRight: Radius.circular(30.5),
                                bottomLeft: Radius.circular(30.5),
                                bottomRight: Radius.circular(30.5),
                              ),
                              color: Color.fromRGBO(77, 166, 238, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Pendaftaran",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Bold'),
                              ),
                            ),
                          ))
                    ],
                  ),
                ]),
              )
            ],
          ),
          mobile: Contactmobile(key: key),
        ),
      )),
    );
  }
}

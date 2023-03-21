import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  const Settings({
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
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 900,
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
                Container(
                  padding: EdgeInsets.only(top: 80, right: 250),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Account',
                    style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 20),
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
                Container(
                  padding: EdgeInsets.only(top: 40, right: 250),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Help',
                    style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 20),
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
                              color: Colors.white, fontFamily: 'Poppins-Bold'),
                        ),
                      ),
                    ))
              ],
            ),
          ]),
        )
      ],
    );
  }
}

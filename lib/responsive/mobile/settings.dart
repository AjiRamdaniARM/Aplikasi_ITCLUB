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
                        letterSpacing: 0.2),
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
                          Container(
                            margin: EdgeInsets.only(left: 120),
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/2989/2989988.png',
                              width: 30,
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ]),
        )
      ],
    );
  }
}

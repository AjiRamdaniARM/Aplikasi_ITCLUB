import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_it/Tentang.dart';
import 'package:app_it/animasi/animasicontact.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/responsive/mobile/homeresponsive.dart';
import 'package:flutter/material.dart';
import 'package:app_it/splash_screen.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_it/Profile.dart';
import 'package:app_it/Cloud.dart';
import 'package:app_it/Contact.dart';
import 'package:app_it/animasi/animasicloud.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

final Uri maps = Uri.parse('https://maps.app.goo.gl/FGJSFggm5LifB4St7');

final Uri aksesTugas = Uri.parse(
    'https://armoviefilm.000webhostapp.com/akses-tugas/akses-tugas.html');
final Uri aksesAbsen = Uri.parse('https://forms.gle/5gb61j32YrZLKFiq9');

List<String> images = ["assets/image/bg1.png", "assets/image/bg2.png"];

class HomeResponsive extends StatelessWidget {
  const HomeResponsive({
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

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          width: MediaQuery.of(context).size.width,
          height: 800,
          child: Stack(children: <Widget>[
            PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                      margin: EdgeInsets.only(top: 150.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Stack(children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Image(
                              width: 10000.0,
                              image: AssetImage(images[pagePosition]),
                            ),
                          ),
                        ]),
                      ));
                }),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image.asset('assets/image/logo.png'),
                ),
                Expanded(
                    child: Container(
                  child: Stack(children: [
                    FittedBox(
                      child: Stack(children: [
                        Container(
                          child: Text(
                            'Selamat Datang',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(111, 109, 109, 1),
                                letterSpacing: 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: GradientText(
                            'IT CLUB LOVERS',
                            style: TextStyle(
                                fontFamily: 'Valken',
                                fontSize: 30,
                                letterSpacing:
                                    0 /*pesrcentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                            colors: [
                              Colors.blue,
                              Color.fromARGB(255, 0, 187, 255)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 55),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              FadeAnimatedText(
                                'SMKS TERPADU IBAADURRAHMAN',
                                textStyle: TextStyle(),
                              ),
                              FadeAnimatedText(
                                'SMKS PARIWISATA PERCIK MADANI',
                              ),
                            ],
                            repeatForever: true,
                          ),
                        )
                      ]),
                    )
                  ]),
                )),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 350,
                ),
                child: Stack(children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 200),
                        child: Text(
                          " FITUR APLIKASI",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 15),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )
          ])),
    ]);
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_it/Tentang.dart';
import 'package:app_it/animasi/animasicontact.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/responsive/mobile/cloudmobile.dart';
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
          height: 900,
          child: Stack(children: <Widget>[
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
            PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                      margin: EdgeInsets.only(top: 100.0),
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
            FittedBox(
              child: Center(
                  child: Container(
                margin: EdgeInsets.only(
                  top: 290,
                ),
                width: 353,
                height: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Fitur Aplikasi",
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold', fontSize: 22),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final image =
                                        "https://armoviefilm.000webhostapp.com/akses_image/akses_image.html";
                                    openBrowserURL(url: image, inApp: false);
                                  },
                                  child: Container(
                                    child: Stack(children: [
                                      Container(
                                        width: 50,
                                        child: Image.asset(
                                            'assets/image/shapeImage.png'),
                                      ),
                                      FittedBox(
                                        child: Center(
                                            heightFactor: 7,
                                            child: Text(
                                              'Image',
                                              style: TextStyle(fontSize: 19),
                                            )),
                                      )
                                    ]),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) => AnimasiC())))
                                  },
                                  child: Container(
                                    child: Stack(children: [
                                      Container(
                                        width: 50,
                                        child: Image.asset(
                                            'assets/image/shapeImage4.png'),
                                      ),
                                      FittedBox(
                                        child: Center(
                                            heightFactor: 7,
                                            child: Text(
                                              'Cloud',
                                              style: TextStyle(fontSize: 19),
                                            )),
                                      )
                                    ]),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    final absen =
                                        "https://forms.gle/5gb61j32YrZLKFiq9";
                                    openBrowserURL(url: absen, inApp: false);
                                  },
                                  child: Container(
                                    child: Stack(children: [
                                      Container(
                                        width: 50,
                                        child: Image.asset(
                                            'assets/image/shapeImage5.png'),
                                      ),
                                      FittedBox(
                                        child: Center(
                                            heightFactor: 7,
                                            child: Text(
                                              'Absen',
                                              style: TextStyle(fontSize: 19),
                                            )),
                                      )
                                    ]),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    final search =
                                        "https://wikipedia-searchengine.web.app/";
                                    openBrowserURL(url: search, inApp: true);
                                  },
                                  child: Container(
                                    child: Stack(children: [
                                      Container(
                                        width: 50,
                                        child: Image.asset(
                                            'assets/image/shapeImage3.png'),
                                      ),
                                      FittedBox(
                                        child: Center(
                                            heightFactor: 7,
                                            child: Text(
                                              'Search',
                                              style: TextStyle(fontSize: 19),
                                            )),
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 100, left: 20),
                              child: InkWell(
                                onTap: () async {
                                  final maps =
                                      "https://maps.app.goo.gl/FGJSFggm5LifB4St7";
                                  openBrowserURL(url: maps, inApp: false);
                                },
                                child: Container(
                                  child: Stack(children: [
                                    Container(
                                      width: 50,
                                      child: Image.asset('assets/image/c3.png'),
                                    ),
                                    FittedBox(
                                      child: Center(
                                          heightFactor: 7,
                                          child: Text(
                                            'Maps',
                                            style: TextStyle(fontSize: 19),
                                          )),
                                    )
                                  ]),
                                ),
                              ),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Lainnya",
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold', fontSize: 22),
                          ),
                        ),
                        FittedBox(
                          child: Column(children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  border: Border.all(
                                      color: Color.fromRGBO(0, 0, 0, 1))),
                            )
                          ]),
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ),
          ])),
    ]);
  }
}

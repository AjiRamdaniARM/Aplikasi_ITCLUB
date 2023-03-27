import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/responsive/mobile/cloudmobile.dart';
import 'package:app_it/responsive/mobile/homeresponsive.dart';
import 'package:flutter/material.dart';
import 'package:app_it/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
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

List<String> images = [
  "assets/image/bg3.png",
  "assets/image/bg1.png",
  "assets/image/bg2.png",
];

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
                          child: Text('Selamat Datang,',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  color: Colors.grey.shade700)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 23),
                          child: GradientText(
                            'IT CLUB LOVERS',
                            style: TextStyle(
                                fontFamily: 'Valken',
                                fontSize: 35,
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
                                textStyle: GoogleFonts.roboto(),
                              ),
                              FadeAnimatedText(
                                'SMKS PARAWISATA PERCIK MADANI',
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
                itemCount: 3,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                      margin: EdgeInsets.only(top: 100.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                        ),
                        child: Stack(children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: Image(
                              width: MediaQuery.of(context).size.width,
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
                  top: 295,
                ),
                width: 353,
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 190, bottom: 1),
                          child: Text(
                            "Fitur Aplikasi",
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold',
                                fontSize: 20,
                                color: Colors.blue.shade300),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
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
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 100, left: 20),
                                      child: InkWell(
                                        onTap: () async {
                                          final article =
                                              "https://articleberita.blogspot.com/";
                                          openBrowserURL(
                                              url: article, inApp: true);
                                        },
                                        child: Container(
                                            child: Stack(children: [
                                          Container(
                                            width: 50,
                                            child: Image.network(
                                                'https://cdn-icons-png.flaticon.com/512/10036/10036759.png'),
                                          ),
                                          FittedBox(
                                            child: Center(
                                                heightFactor: 7,
                                                child: Text(
                                                  'Article',
                                                  style:
                                                      TextStyle(fontSize: 19),
                                                )),
                                          )
                                        ])),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 100, left: 20),
                                      child: InkWell(
                                        onTap: () async {
                                          final maps =
                                              "https://quizizz.com/join";
                                          openBrowserURL(
                                              url: maps, inApp: true);
                                        },
                                        child: Container(
                                            child: Stack(children: [
                                          Container(
                                            width: 50,
                                            child: Image.network(
                                                'https://cdn-icons-png.flaticon.com/512/2641/2641457.png'),
                                          ),
                                          FittedBox(
                                            child: Center(
                                                heightFactor: 7,
                                                child: Text(
                                                  ' Quiz',
                                                  style:
                                                      TextStyle(fontSize: 19),
                                                )),
                                          )
                                        ])),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 100, left: 20),
                                      child: InkWell(
                                        onTap: () async {
                                          final anggota =
                                              "https://armoviefilm.000webhostapp.com/akses_anggota/akses_anggota.html";
                                          openBrowserURL(
                                              url: anggota, inApp: false);
                                        },
                                        child: Container(
                                            child: Stack(children: [
                                          Container(
                                            width: 60,
                                            child: Image.network(
                                                'https://cdn-icons-png.flaticon.com/512/10105/10105814.png'),
                                          ),
                                          FittedBox(
                                            child: Center(
                                                heightFactor: 7,
                                                child: Text(
                                                  'Anggota',
                                                  style:
                                                      TextStyle(fontSize: 19),
                                                )),
                                          )
                                        ])),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 100, left: 20),
                                      child: InkWell(
                                        onTap: () async {
                                          final maps =
                                              "https://maps.app.goo.gl/FGJSFggm5LifB4St7";
                                          openBrowserURL(
                                              url: maps, inApp: false);
                                        },
                                        child: Container(
                                          child: Stack(children: [
                                            Container(
                                              width: 50,
                                              child: Image.asset(
                                                  'assets/image/c3.png'),
                                            ),
                                            FittedBox(
                                              child: Center(
                                                  heightFactor: 7,
                                                  child: Text(
                                                    'Maps',
                                                    style:
                                                        TextStyle(fontSize: 19),
                                                  )),
                                            )
                                          ]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 200),
                          child: Text(
                            "Lainnya",
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold',
                                fontSize: 22,
                                color: Colors.blue.shade300),
                          ),
                        ),
                        Center(
                            // margin: EdgeInsets.all(10),
                            child: Container(
                          margin: EdgeInsets.all(20),
                          child: Column(children: [
                            InkWell(
                              onTap: () async {
                                final tiktok =
                                    'https://www.tiktok.com/@itclub1?_t=8YWcjztUc1B&_r=1';
                                openBrowserURL(url: tiktok, inApp: false);
                              },
                              child: Container(
                                  // margin: EdgeInsets.symmetric(
                                  //     vertical: 2, horizontal: 2),
                                  child: Image.asset(
                                'assets/image/image-medsos/tiktok.png',
                              )),
                            ),
                            InkWell(
                              onTap: () async {
                                final instagram =
                                    'https://www.instagram.com/itclubsmkti/';
                                openBrowserURL(url: instagram, inApp: false);
                              },
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                  child: Image.asset(
                                      'assets/image/image-medsos/instagram.png')),
                            ),
                            InkWell(
                              onTap: () async {
                                final youtube =
                                    'https://www.youtube.com/@itclub_smkti4962';
                                openBrowserURL(url: youtube, inApp: false);
                              },
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                  child: Image.asset(
                                      'assets/image/image-medsos/yotube.png')),
                            ),
                          ]),
                        )),
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

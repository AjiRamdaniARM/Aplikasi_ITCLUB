import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_it/Tentang.dart';
import 'package:app_it/animasi/animasicontact.dart';
import 'package:flutter/material.dart';
import 'package:app_it/splash_screen.dart';
import 'package:url_launcher/link.dart';
import 'package:app_it/Profile.dart';
import 'package:app_it/Cloud.dart';
import 'package:app_it/Contact.dart';
import 'package:app_it/animasi/animasicloud.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri maps = Uri.parse('https://maps.app.goo.gl/FGJSFggm5LifB4St7');
final Uri aksesImage = Uri.parse(
    'https://armoviefilm.000webhostapp.com/akses_image/akses_image.html');
final Uri aksesTugas = Uri.parse(
    'https://armoviefilm.000webhostapp.com/akses-tugas/akses-tugas.html');
final Uri aksesAbsen = Uri.parse('https://forms.gle/5gb61j32YrZLKFiq9');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

List<String> images = ["assets/image/bg1.png", "assets/image/bg2.png"];
String title = "Lorem Ipsum";
String desc = "Lorem ipsum sit dolor amet";

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            height: 90,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, -1),
                  blurRadius: 8,
                ),
              ],
              color: Colors.white,
            ),
            child: Container(
                margin: EdgeInsets.all(9.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Image.asset(
                          'assets/image/Home.png',
                          width: 10,
                        ),
                      ),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()))
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Image.asset(
                          'assets/image/Contact.png',
                        ),
                      ),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnimasiCo()))
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Image.asset('assets/image/Profile.png'),
                      ),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileIt()))
                      },
                    )),
                  ],
                ))),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                width: 907,
                height: 800,
                child: Stack(children: <Widget>[
                  PageView.builder(
                      itemCount: 2,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Container(
                            margin: EdgeInsets.only(top: 150.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                  Positioned(
                    top: 25,
                    left: 250,
                    width: 130,
                    child: Image.asset('assets/image/logo.png'),
                  ),
                  Positioned(
                      top: 49,
                      left: 5,
                      child: Text(
                        'Selamat Datang,',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(111, 109, 109, 1),
                            fontFamily: 'Inter',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                    top: 110,
                    left: 5,
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
                  ),
                  Positioned(
                      top: 75,
                      left: 0,
                      child: GradientText(
                        'IT CLUB LOVERS',
                        style: TextStyle(
                            fontFamily: 'Valken',
                            fontSize: 30,
                            letterSpacing:
                                0 /*pesrcentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                        colors: [Colors.blue, Color.fromARGB(255, 0, 187, 255)],
                      )),

                  // shape bar
                  Positioned(
                      top: 360,
                      left: 2,
                      child: Container(
                        width: 375,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Color.fromRGBO(179, 232, 249, 1)),
                        child: Stack(children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Stack(children: <Widget>[
                              Container(
                                child: Text(
                                  'FITUR',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-bold', fontSize: 25),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80),
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: Color.fromARGB(253, 6, 247, 127)),
                                child: Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'APLIKASI',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontFamily: 'Poppins-Bold',
                                          fontSize: 20),
                                    )),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            margin: EdgeInsets.only(top: 60, left: 22),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                    left: 0,
                                    child: Link(
                                        target: LinkTarget.blank,
                                        uri: aksesImage,
                                        builder: (context, AksesImage) =>
                                            InkWell(
                                              child: Container(
                                                width: 149,
                                                height: 68,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(9),
                                                    topRight:
                                                        Radius.circular(9),
                                                    bottomLeft:
                                                        Radius.circular(9),
                                                    bottomRight:
                                                        Radius.circular(9),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                                child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      top: 15,
                                                      left: 12,
                                                      child: Image.asset(
                                                        'assets/image/shapeImage.png',
                                                        width: 40,
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 23,
                                                        left: 65,
                                                        child: Text(
                                                          'Image',
                                                          style: TextStyle(
                                                              fontSize: 20),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              onTap: AksesImage,
                                            ))),
                                // end bar 1

                                Positioned(
                                    left: 0,
                                    top: 90,
                                    child: Link(
                                      target: LinkTarget.blank,
                                      uri: aksesAbsen,
                                      builder: (context, AksesAbsen) => InkWell(
                                        child: Container(
                                          width: 149,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(9),
                                              topRight: Radius.circular(9),
                                              bottomLeft: Radius.circular(9),
                                              bottomRight: Radius.circular(9),
                                            ),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 10,
                                                left: 12,
                                                child: Image.asset(
                                                  'assets/image/shapeImage3.png',
                                                  width: 40,
                                                )),
                                            Positioned(
                                                top: 25,
                                                left: 70,
                                                child: Text(
                                                  'Absen',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ))
                                          ]),
                                        ),
                                        onTap: AksesAbsen,
                                      ),
                                    )),

                                Positioned(
                                    top: 180,
                                    child: Link(
                                        target: LinkTarget.blank,
                                        uri: maps,
                                        builder: (context, Maps) => InkWell(
                                              child: Container(
                                                width: 149,
                                                height: 68,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(9),
                                                    topRight:
                                                        Radius.circular(9),
                                                    bottomLeft:
                                                        Radius.circular(9),
                                                    bottomRight:
                                                        Radius.circular(9),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 5,
                                                      left: 10,
                                                      child: Image.asset(
                                                        'assets/image/shapeImage5.png',
                                                        width: 55,
                                                      )),
                                                  Positioned(
                                                    top: 25,
                                                    left: 80,
                                                    child: Text(
                                                      'Maps',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              onTap: Maps,
                                            ))),

                                // end bar 5

                                Positioned(
                                    left: 180,
                                    child: Link(
                                        target: LinkTarget.self,
                                        uri: aksesTugas,
                                        builder: (context, AksesTugas) =>
                                            (InkWell(
                                              child: Container(
                                                width: 149,
                                                height: 68,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(9),
                                                    topRight:
                                                        Radius.circular(9),
                                                    bottomLeft:
                                                        Radius.circular(9),
                                                    bottomRight:
                                                        Radius.circular(9),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                                child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      top: 10,
                                                      left: 15,
                                                      child: Image.asset(
                                                        'assets/image/shapeImage2.png',
                                                        width: 50,
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 25,
                                                        left: 80,
                                                        child: Text(
                                                          'Tugas',
                                                          style: TextStyle(
                                                              fontSize: 20),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              onTap: AksesTugas,
                                            )))),
                                // end bar 2

                                Positioned(
                                  left: 180,
                                  top: 90,
                                  child: InkWell(
                                    child: Container(
                                      width: 149,
                                      height: 68,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(9),
                                          topRight: Radius.circular(9),
                                          bottomLeft: Radius.circular(9),
                                          bottomRight: Radius.circular(9),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 10,
                                            left: 20,
                                            child: Image.asset(
                                              'assets/image/shapeImage4.png',
                                              width: 45,
                                            )),
                                        const Positioned(
                                            top: 25,
                                            left: 80,
                                            child: Text(
                                              'Cloud',
                                              style: TextStyle(fontSize: 20),
                                            ))
                                      ]),
                                    ),
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AnimasiC()))
                                    },
                                  ),
                                ),
                                // end bar 4
                              ],
                            ),
                          )
                        ]),
                      )) // shape text
                ]))));
  }
}

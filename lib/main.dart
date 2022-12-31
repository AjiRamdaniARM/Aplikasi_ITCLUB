import 'package:flutter/material.dart';
import 'package:app_it/splash_screen.dart';
import 'package:url_launcher/link.dart';
import 'Profile.dart';
import 'Cloud.dart';
import 'Contact.dart';

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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}

List<String> images = ["assets/image/bg1.png", "assets/image/bg1.png"];
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Positioned(
                child: IconButton(
              iconSize: 70,
              icon: Image.asset('assets/image/Home.png'),
              onPressed: () => {
                // link button
                debugPrint("CUYY")
              },
            )),
            Positioned(
                child: IconButton(
              iconSize: 70,
              icon: Image.asset('assets/image/Contact.png'),
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Contact(title: title, desc: desc)))
              },
            )),
            Positioned(
                child: IconButton(
              iconSize: 70,
              icon: Image.asset('assets/image/Profile.png'),
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Profile(title: title, desc: desc)))
              },
            )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          width: 907,
          height: 800,
          decoration: BoxDecoration(),
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
                      fontSize: 20,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 105,
                left: 5,
                child: Text(
                  'SMKS TERPADU IBADURRAHMAN',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 72,
                left: 0,
                child: Text(
                  'IT CLUB LOVERS',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(1, 118, 255, 1),
                      fontFamily: 'Valken',
                      fontSize: 30,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Container(
              child: Stack(
                children: <Widget>[
                  // shape bar
                  Positioned(
                      top: 360,
                      child: Container(
                        width: 360,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Color.fromRGBO(179, 232, 249, 1)),
                      )),
                  // end shape bar

                  // shape text
                  Positioned(
                      top: 376,
                      left: 90,
                      child: Container(
                        width: 105,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                          color: Color.fromRGBO(35, 255, 189, 1),
                        ),
                      )),
                  // akhir shape text

                  // text fitur
                  Positioned(
                      top: 380,
                      left: 22,
                      child: Text(
                        'FITUR APLIKASI ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'MVS',
                            fontSize: 20,
                            letterSpacing: 2,
                            height: 1),
                      )),
                  // end text fitur

                  // bar 1
                  Positioned(
                      top: 430,
                      left: 18,
                      child: Link(
                          target: LinkTarget.blank,
                          uri: aksesImage,
                          builder: (context, AksesImage) => InkWell(
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
                                            style: TextStyle(fontSize: 20),
                                          ))
                                    ],
                                  ),
                                ),
                                onTap: AksesImage,
                              ))),
                  // end bar 1

                  // bar 2
                  Positioned(
                      top: 430,
                      left: 190,
                      child: Link(
                          target: LinkTarget.blank,
                          uri: aksesTugas,
                          builder: (context, AksesTugas) => (InkWell(
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
                                            style: TextStyle(fontSize: 20),
                                          ))
                                    ],
                                  ),
                                ),
                                onTap: AksesTugas,
                              )))),
                  // end bar 2
                  // bar 3
                  Positioned(
                      top: 510,
                      left: 18,
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
                              color: Color.fromRGBO(255, 255, 255, 1),
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
                                    style: TextStyle(fontSize: 20),
                                  ))
                            ]),
                          ),
                          onTap: AksesAbsen,
                        ),
                      )),
                  // end bar 4
                  // bar 1
                  Positioned(
                    top: 510,
                    left: 190,
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
                                builder: (context) =>
                                    Cloud(title: title, desc: desc)))
                      },
                    ),
                  ),
                  // end bar 4
                  // bar 5
                  Positioned(
                      top: 590,
                      left: 18,
                      child: Link(
                          target: LinkTarget.blank,
                          uri: maps,
                          builder: (context, Maps) => InkWell(
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
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    )
                                  ]),
                                ),
                                onTap: Maps,
                              ))),
                  // end bar 5
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

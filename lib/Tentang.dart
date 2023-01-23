import 'package:flutter/material.dart';
import 'package:app_it/responsive.dart';
import 'package:app_it/main.dart';

// penyimpanan text paragraph
String paragraph1 =
    "IT CLUB adalah aplikasi penyedia akses ke berbagai penyimpanan atau internet yang digunakan oleh Anggota extrakulikuler terpusat pertama di yayasan lembaga pendidikan ibaadurrahman. Saya memiliki tujuan untuk menyediakan layanan aplikasi api mobile kepada anggota eskul, untuk memudahkan dalam mengakses internet eskul untuk kegiatan pada saat eskul";

class Tentangit extends StatefulWidget {
  @override
  State<Tentangit> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tentangit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            tablet: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // shape bar
                  Center(
                    heightFactor: 1.2,
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
                              Color.fromARGB(255, 1, 221, 255),
                              Color.fromARGB(255, 0, 213, 255)
                            ]),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "TENTANG IT CLUB",
                              style: TextStyle(
                                  fontFamily: "Valken",
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.all(15),
                              child: Text(
                                "Back",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () => {Navigator.pop(context)},
                          )
                        ],
                      ),
                    ),
                  ),

// paragraf text
                  Center(
                    heightFactor: 34,
                    child: Stack(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "IT CLUB SMK TI PM",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          '$paragraph1',
                          style: TextStyle(fontFamily: "Robotto"),
                          maxLines: 10,
                        ),
                      )
                    ]),
                  ),
                ]),
            mobile: MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      Color.fromARGB(255, 1, 221, 255),
                      Color.fromARGB(255, 0, 213, 255)
                    ]),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(
                      "TENTANG IT CLUB",
                      style: TextStyle(
                          fontFamily: "Valken",
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onTap: () => {Navigator.pop(context)},
                  )
                ],
              ),
            ),
          ),
        ),

// paragraf text
        Center(
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "IT CLUB SMK TI PM",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Text(
                '$paragraph1',
                style: TextStyle(fontFamily: "Robotto"),
                maxLines: 10,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

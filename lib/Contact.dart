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

class Contact extends StatelessWidget {
  //constructor
  Contact({required this.title, required this.desc});
  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        width: 907,
        height: 900,
        decoration: BoxDecoration(),
        child: Stack(children: <Widget>[
          Positioned(
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
                          Color.fromARGB(255, 17, 230, 38),
                          Color.fromARGB(255, 17, 175, 27)
                        ]),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'CONTACT',
                          style: TextStyle(
                            fontFamily: 'Valken',
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 100),
                          child: Text(
                            'Akses Contact Pengurus',
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()))
                        },
                      ),
                    ],
                  ))),
          // daftar contact
          Container(
            margin: EdgeInsets.only(top: 250, left: 20),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                        width: 375,
                        height: 75,
                        decoration: BoxDecoration(),
                        child: Stack(children: <Widget>[
                          Container(
                              child: Stack(children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://pps.whatsapp.net/v/t61.24694-24/321172830_499560462245015_140409785024768514_n.jpg?ccb=11-4&oh=01_AdQ__cwfHm5yuVnDZQUwQWzp9MB3R02wokrh4vDpUFUA4g&oe=63C7EC0A'),
                                    fit: BoxFit.fitWidth),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(45, 45)),
                              ),
                            ),
                            Text('Bu Fitri'),
                          ]))
                        ])))
              ],
            ),
          )
        ]),
      ),
    ));
  }
}

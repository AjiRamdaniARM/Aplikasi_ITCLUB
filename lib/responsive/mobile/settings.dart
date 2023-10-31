import 'package:app_it/responsive/mobile/homeresponsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

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
                      style:
                          TextStyle(fontFamily: 'Poppins-Bold', fontSize: 20),
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
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        'Tentang IT CLUB',
                        style: TextStyle(fontFamily: 'Poppins-Bold'),
                      ),
                      content: Row(
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              'IT CLUB adalah Extrakulikuler yang ada disekolah smk terpadu ibadurrahman dan smk parawisata percik madani dimana eskul ini berpokus pada teknologi dan informatika yang memiliki tujuan untuk membantu siswa dan siswi manambah wawasan dan ilmu dibidang tersebut',
                              style: TextStyle(
                                  fontFamily: 'Robotto', letterSpacing: 0.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                    final develop =
                        'https://www.instagram.com/smk_terpadu_ibaadurrahman/';
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
                      style:
                          TextStyle(fontFamily: 'Poppins-Bold', fontSize: 20),
                    ),
                  ),
                ),

                // button developer
                InkWell(
                  onTap: () async {
                    final develop = 'https://wa.link/75x7oi';
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
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        'Aplikasi ITC Lovers',
                        style: TextStyle(fontFamily: 'Poppins-Bold'),
                      ),
                      content: Row(
                        children: [
                          Container(
                            width: 50,
                            child: Lottie.network(
                                'https://assets2.lottiefiles.com/packages/lf20_hfwtjq7y.json'),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              'Aplikasi ini dalam tahap pengembangan, Tidak suppport untuk device IOS, TABLET dan DESKTOP !! ',
                              style: TextStyle(
                                  fontFamily: 'Robotto', letterSpacing: 0.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                    onTap: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text(
                              'Form Pendaftaran',
                              style: TextStyle(fontFamily: 'Poppins-Bold'),
                            ),
                            content: Container(
                              child: Lottie.network(
                                  'https://assets8.lottiefiles.com/packages/lf20_tpa51dr0.json'),
                            ),
                            actions: <Widget>[
                              InkWell(
                                onTap: () async {
                                  final eskul =
                                      'https://docs.google.com/forms/d/e/1FAIpQLSfkDkDzorwJe6xKXnr6LgNIcoDiQMPJKurPD3iR95Jowpf_eQ/viewform?usp=sf_link';
                                  openBrowserURL(url: eskul, inApp: false);
                                },
                                child: Container(
                                    width: 100,
                                    height: 50,
                                    color: Color.fromARGB(255, 0, 88, 252),
                                    child: Center(
                                      child: Text(
                                        "Daftar Eskul",
                                        style: TextStyle(
                                            fontFamily: 'Robotto',
                                            color: Colors.white),
                                      ),
                                    )),
                              ),
                              InkWell(
                                onTap: () async {
                                  final daftarsekolah =
                                      'https://docs.google.com/forms/d/e/1FAIpQLSf2eyqxcdAlpFRlG6gnXvEeGWOJpudrdHz0cSDFinQb5qIh7g/viewform';
                                  openBrowserURL(
                                      url: daftarsekolah, inApp: false);
                                },
                                child: Container(
                                    width: 100,
                                    height: 50,
                                    color: Color.fromARGB(255, 252, 0, 0),
                                    child: Center(
                                      child: Text(
                                        "Daftar Sekolah",
                                        style: TextStyle(
                                            fontFamily: 'Robotto',
                                            color: Colors.white),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
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

// halaman pop up sistem

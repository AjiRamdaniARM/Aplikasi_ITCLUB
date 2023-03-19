import 'package:app_it/Home.dart';
import 'package:flutter/material.dart';
import 'package:app_it/main.dart';
import 'package:lottie/lottie.dart';
import 'package:app_it/nav.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Api_Wa extends StatelessWidget {
  //required artinya paramter wajib diisi saat dipanggil di halaman lain
  Api_Wa({required this.nama, required this.pesan});

  String nama;
  String pesan;
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

    String api =
        ("https://api.whatsapp.com/send?phone=6289657739017&text=Assalamualaikum ibu, Saya%20${nama},%20${pesan}");
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //menampilkan nama
          Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_yfusyzym.json'),
          Container(
            child: Text('Yakin Mau Ngirim Pesan ?'),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: Row(
              children: [
                InkWell(
                  onTap: () => {Navigator.pop(context)},
                  child: Container(
                      margin: EdgeInsets.all(10),
                      width: 140,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.5),
                            topRight: Radius.circular(30.5),
                            bottomLeft: Radius.circular(30.5),
                            bottomRight: Radius.circular(30.5),
                          ),
                          color: Colors.red),
                      child: Center(
                        child: Text(
                          "Gak Jadi Deh",
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold', color: Colors.white),
                        ),
                      )),
                ),
                InkWell(
                  onTap: () async {
                    final convert = api;
                    openBrowserURL(url: convert, inApp: false);
                  },
                  child: Container(
                      width: 140,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.5),
                            topRight: Radius.circular(30.5),
                            bottomLeft: Radius.circular(30.5),
                            bottomRight: Radius.circular(30.5),
                          ),
                          color: Color.fromARGB(255, 54, 244, 79)),
                      child: Center(
                        child: Text(
                          "Yakin Lah",
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold', color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          )

          // Text('Apakah anda yaking ingin mengrim pesannya?'),
          // InkWell(
          //   onTap: () async {
          //     final convert = api;
          //     openBrowserURL(url: convert, inApp: false);
          //   },
          //   child: Container(
          //       width: 50,
          //       height: 20,
          //       color: Colors.blue,
          //       child: Text('Kirim')),
          // )
        ],
      )),
    );
  }
}

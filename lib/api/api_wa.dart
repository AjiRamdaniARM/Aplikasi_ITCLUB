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
        ("https://api.whatsapp.com/send?phone=6289657739017&text=Assalamualaikum ibu, Saya%20${nama}%20${pesan}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //menampilkan nama

          Text('Apakah anda yaking ingin mengrim pesannya?'),
          InkWell(
            onTap: () async {
              final convert = api;
              openBrowserURL(url: convert, inApp: false);
            },
            child: Container(
                width: 50,
                height: 20,
                color: Colors.blue,
                child: Text('Kirim')),
          )
        ],
      )),
    );
  }
}

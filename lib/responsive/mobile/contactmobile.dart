import 'package:app_it/api/api_wa.dart';
import 'package:flutter/material.dart';

class Contactmobile extends StatelessWidget {
  Contactmobile({
    Key? key,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nama = TextEditingController();
  final pesan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      // header halaman
      Container(
        padding: EdgeInsets.all(40),
        child: Row(
          children: [
            FittedBox(
                child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 110),
                    child: Text(
                      "Hubungi",
                      style:
                          TextStyle(fontFamily: 'Poppins-Bold', fontSize: 40),
                    )),
                Container(
                  child: Text(
                    'Pembina Eskul',
                    style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 40),
                  ),
                ),
                // text parargrap
                Container(
                    width: 250,
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Water is life. Water is a basic human need. In various lines of life, humans need water.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Color.fromRGBO(137, 137, 137, 1),
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                          ),
                    ))
              ],
            ))
          ],
        ),
      ),

      // fungsi mengrimkan pesan ke pembina eskul
      Container(
        padding: EdgeInsets.only(top: 0.4),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: nama,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 76, 174, 255),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong yaa';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.92, // <-- TextField width
                  height: 120, // <-- TextField height
                  child: TextFormField(
                    controller: pesan,
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Message",
                      hintText: 'Enter a message',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Message tidak boleh kosong yaa';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 100),
                    margin: EdgeInsets.symmetric(
                      vertical: 5.5,
                    ),
                    child: Text.rich(
                      TextSpan(
                          text: 'PERINGATAN !! ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 3, 3),
                              fontSize: 11,
                              fontFamily: 'Robotto'),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Jangan mengirim pesan sembarangan',
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 12),
                            )
                          ]),
                    )),
                InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Api_Wa(
                                      nama: nama.text,
                                      pesan: pesan.text,
                                    )));
                      }
                    },
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
                          "Kirim Pesan",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Poppins-Bold'),
                        ),
                      ),
                    ))
              ],
            )),
      )
    ]);
  }
}

showAlertDialog(BuildContext context) {
  // Init
  AlertDialog dialog = AlertDialog(
    title: Text("AlertDialog component"),
    actions: [
      ElevatedButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          }),
      ElevatedButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.pop(context);
          }),
    ],
  );

  // Show the dialog
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      });
}

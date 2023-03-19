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
      Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: nama,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
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
              ElevatedButton(
                  onPressed: () {
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
                  child: Text("Kirim Pesan"))
            ],
          ))
    ]);
  }
}

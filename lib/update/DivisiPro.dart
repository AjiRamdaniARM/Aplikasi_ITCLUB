import 'package:app_it/data/Api_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DivisiPro extends StatefulWidget {
  const DivisiPro({super.key});

  @override
  State<DivisiPro> createState() => _DivisiPro();

}

class _DivisiPro extends State<DivisiPro> {
  late dataJson data; 
@override
void initState() {
readlocalJson();
super.initState();
}
readlocalJson () async {
  var d = await rootBundle.loadString("assets/data.json");
  data = useFromJson(d);
  print(data.judul);
  print(data.skill);
}

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
         child :
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
Row( children: [
 InkWell(
                  child: Container(
                    width: 20,
                    child: Text('Back'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 150, vertical: 30),
                  child: Column(
                  children: [
                    Container(
                      child: Text(data.judul.toString()),
                    )
                  ],
                ) ,
                )
               
],)
               
              ],
            )

        ),
      );
  }
}
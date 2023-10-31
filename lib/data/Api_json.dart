import 'dart:convert';

dataJson useFromJson(String str) => dataJson.fromJson(jsonDecode(str));
class dataJson {
  dataJson({this.judul,this.skill});

  String? judul;
  String? skill;

  factory dataJson.fromJson(Map<String, dynamic> json) => dataJson(
    judul: json['judul'],
    skill: json['skill']
  );

}
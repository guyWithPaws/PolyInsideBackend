import 'dart:convert';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:sqlite3/sqlite3.dart';

void main() async {
  final db = sqlite3.open('db.sqlite');
  db.execute("DROP TABLE IF EXISTS Professors");
  db.execute("""CREATE TABLE IF NOT EXISTS Professors (
                id INTEGER PRIMARY KEY, 
                name TEXT NOT NULL,
                avatar TEXT NOT NULL
                )""");

  String first_page =
      'https://www.spbstu.ru/university/about-the-university/staff/';
  final response = await http.Client().get(Uri.parse(first_page));

  if (response.statusCode == 200) {
    var document = parse(response.body);
    int len = document.getElementsByClassName('pagination')[0].children.length;
    int lastPage = int.parse(document
        .getElementsByClassName('pagination')[0]
        .children[len - 2]
        .text);
    var links = [];
    links.add(first_page);

    for (int i = 2; i < lastPage + 1; i++) {
      links.add(
          'https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
    }

    for (int j = 0; j < lastPage; j++) {
      final resp = await http.Client().get(Uri.parse(links[j].toString()));
      if (resp.statusCode == 200) {
        var page = parse(resp.body);
        int profsNum = page.getElementsByClassName('col-sm-9 col-md-10').length;
        for (int k = 0; k < profsNum; k++) {
          String? profsAvatar =
              'https://www.spbstu.ru/${page.getElementsByClassName('col-sm-3 col-md-2')[k].children[0].attributes['src']}';
          if (j == 0) {
            String profsName = utf8.decode(page
                .getElementsByClassName('col-sm-9 col-md-10')[k]
                .children[0]
                .text
                .runes
                .toList());
            db.execute("""
            INSERT INTO Professors (name, avatar)
            VALUES (?, ?)""", [profsName, profsAvatar]);
          } else {
            String profsName = page
                .getElementsByClassName('col-sm-9 col-md-10')[k]
                .children[0]
                .text;
            db.execute("""
            INSERT INTO Professors (name, avatar)
            VALUES (?, ?)""", [profsName, profsAvatar]);
          }
        }
      } else {
        throw Exception();
      }
    }
  } else {
    throw Exception();
  }
}

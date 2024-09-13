import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:l/l.dart';
import 'package:poly_inside_server/database/provider.dart';
import 'package:poly_inside_server/generated/protobufs/service.pb.dart';

class Parser {
  final String staffPage =
      'https://www.spbstu.ru/university/about-the-university/staff/';

  final DatabaseProvider provider;

  Parser({required this.provider}) {
    l.i('[Parser]: Parser initialization was successful');
  }

  bool checkIsGoodResponce(Response response) {
    if (response.statusCode == 200) {
      return true;
    } else {
      l.w('Parser: Bad responce with status code ${response.statusCode}');
      return false;
    }
  }

  Future<List<String>> getListOfProfessorsNames() async {
    var listOfProfessorsNames = <String>[];
    var listOfProfessors = await provider.getOnceAllProfessors();
    for (final professor in listOfProfessors) {
      listOfProfessorsNames.add(professor.name);
    }
    return listOfProfessorsNames;
  }

  Future<void> fillDatabase() async {
    final responce = await http.Client().get(Uri.parse(staffPage));

    if (checkIsGoodResponce(responce)) {
      l.i('[Parser] Everything is OK. Start parsing...');

      final htmlDocument = parse(responce.body);
      final htmlElements = htmlDocument.getElementsByClassName('pagination');

      final length = htmlElements[0].children.length;
      final lastPage = int.parse(htmlElements[0].children[length - 2].text);

      var linksToProfessors = <String>[];
      for (var i = 1; i < lastPage; i++) {
        l.i('Parser: Link to $i professor added. Link: https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
        linksToProfessors.add(
            'https://www.spbstu.ru/university/about-the-university/staff/?arrFilter_ff%5BNAME%5D=&arrFilter_pf%5BPOSITION%5D=&arrFilter_pf%5BSCIENCE_TITLE%5D=&arrFilter_pf%5BSECTION_ID_1%5D=849&arrFilter_pf%5BSECTION_ID_2%5D=&arrFilter_pf%5BSECTION_ID_3%5D=&del_filter=%D0%A1%D0%B1%D1%80%D0%BE%D1%81%D0%B8%D1%82%D1%8C&PAGEN_1=$i&SIZEN_1=20');
      }

      var professorsNames = await getListOfProfessorsNames();

      for (final link in linksToProfessors) {
        final responce = await http.Client().get(Uri.parse(link));

        if (checkIsGoodResponce(responce)) {
          var professorPage = parse(responce.body);
          var numberOfProfessor =
              professorPage.getElementsByClassName('col-sm-9 col-md-10').length;

          for (var number = 0; number < numberOfProfessor; number++) {
            var professorName = professorPage
                .getElementsByClassName('col-sm-9 col-md-10')[number]
                .children[0]
                .text;

            if (professorsNames.contains(professorName)) {
              var avatarSublink = professorPage
                  .getElementsByClassName('col-sm-3 col-md-2')[number]
                  .children[0]
                  .attributes['src']
                  .toString();

              var professorAvatar = 'https://www.spbstu.ru/$avatarSublink';

              var professorIdBytes =
                  utf8.encode(professorName + DateTime.now().toString());

              var professorId = sha1.convert(professorIdBytes).toString();

              await provider.addProfessor(
                Professor(
                    id: professorId,
                    name: professorName,
                    avatar: professorAvatar),
              );
            }
          }
        }
      }
    }
    l.i('[Parser]: Database was updated');
  }
}

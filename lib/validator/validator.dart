import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';

enum FilterTypes {
  accepted,
  rejected;

  String get name {
    switch (this) {
      case FilterTypes.accepted:
        return 'Accepted';
      case FilterTypes.rejected:
        return 'Rejected';
    }
  }
}

class Filter {
  late String message;
  Map<String, String> alphabet = {};
  List<String> badWords = [];

  List<String> words = [];
  final RegExp space = RegExp(r'\s+');

  static File jsonFile = File(r'lib\validator\data\alphabet.json');
  static File txtFile = File(r'lib\validator\data\bad_words.txt');
  static int numberOfBadWords = 4;

  Filter._();
  static final Filter instance = Filter._();

  String check(String message_) {
    message = message_;
    return messageAnalyzer();
  }

  Future<void> initializeAsyncLoaders() async {
    alphabet = await loadAlphabetFromJsonFile();
    badWords = await loadWordsFromFile();
  }

  Future<List<String>> loadWordsFromFile() async {
    final contents = await txtFile.readAsLines(encoding: const Utf8Codec());
    final badWords = <String>{};

    for (final word in contents) {
      if (word.isNotEmpty) {
        badWords.add(word.toLowerCase());
      }
    }

    return badWords.toList();
  }

  Future<Map<String, String>> loadAlphabetFromJsonFile() async {
    final jsonString = await jsonFile.readAsString();
    final jsonData = jsonDecode(jsonString);
    final alphabet = <String, String>{};

    if (jsonData is Map) {
      for (final entry in jsonData.entries) {
        if (entry.key is String && entry.value is String) {
          alphabet[entry.key.toString()] = entry.value as String;
        }
      }
    }

    return alphabet;
  }

  String messageAnalyzer() {
    message = message.replaceAll(space, ' ');

    
    
    words = message
        .split(' ')
        .map((word) =>
            word.split('').map((letter) => alphabet[letter] ?? letter).join())
        .toList();

    return searchBadWord();
  }

  String searchBadWord() {
    var regExpBadWord = RegExp('');
    for (final word in words) {
      for (final badWord in badWords) {
        regExpBadWord = RegExp(badWord);
        if (word.replaceAll(regExpBadWord, '').isEmpty) {
          return FilterTypes.rejected.name;
        }
      }
    }
    return FilterTypes.accepted.name;
  }
}



// ".": "",
// ",": "",
// "!": "",
// "?": "",
// "&": "",
// ")": "",
// "(": "",
// "|": "",
// "/": "",
// "-": "",
// "_": "",
// "\"": "",
// ";": "",
// "®": ""
import 'dart:convert';
import 'dart:io';

class Filter {
  late String message;
  late Map<String, String> alphabet;
  late Set<String> badWords;

  List<String> words = [];
  final RegExp space = RegExp(r'\s+');

  static File jsonFile = File('/data/alphabet.json');
  static File txtFile = File('/data/bad_words.txt');
  static int numberOfBadWords = 4;

  Filter(this.message) {
    initializeAsyncLoaders().then((e) => messageAnalyzer());
  }

  Future<void> initializeAsyncLoaders() async {
    alphabet = await loadAlphabetFromJsonFile();
    badWords = await loadWordsFromFile();
  }

  Future<Set<String>> loadWordsFromFile() async {
    final contents = await txtFile.readAsString();
    final words = contents.split(RegExp(r'\W+'));
    final badWords = <String>{};

    for (final word in words) {
      if (word.isNotEmpty) {
        badWords.add(word.toLowerCase());
      }
    }

    return badWords;
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

  bool messageAnalyzer() {
    message = message.replaceAll(space, ' ');

    words = message
        .split(' ')
        .map((word) =>
            word.split('').map((letter) => alphabet[letter] ?? letter).join())
        .toList();

    return searchBadWord();
  }

  bool searchBadWord() {
    var regExpWord = RegExp('');
    for (final word in words) {
      for (final badWord in badWords) {
        regExpWord = RegExp(word);
        if (regExpWord.hasMatch(badWord)) {
          return false;
        }
      }
    }
    return true;
  }
}

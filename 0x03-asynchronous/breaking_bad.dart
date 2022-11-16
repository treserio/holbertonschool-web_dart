import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printBbCharacters() => http.get(Uri.parse(
  'https://breakingbadapi.com/api/characters'))
    .then((res) {
      for (var char in jsonDecode(res.body)) {
        print(char['name']);
      }
    })
    .catchError((err) => 'error caught: $err');

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateQuote(id) => http.get(Uri.parse(
  'https://breakingbadapi.com/api/quotes'))
    .then((res) => "${
      jsonDecode(res.body)[--id]['author']} : ${
      jsonDecode(res.body)[id]['quote']}")
    .catchError((err) => 'There are no quotes');

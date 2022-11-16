import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateQuote(id) => http.get(Uri.parse(
  'https://breakingbadapi.com/api/quotes'))
    .then((res) {
      String quote = jsonDecode(res.body)[--id]['author'] + ' : ' +
        jsonDecode(res.body)[id]['quote'];
      return quote;
    })
    .catchError((err) => 'There is no quotes');

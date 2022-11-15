import 'dart:async';
import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "3.14 Battery street"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

FutureOr<String> greetUser() async => fetchUserData()
  .then((data) => "${json.decode(data)['username']}\n")
  .catchError((err) => "error caught: $err");

Future<String> loginUser() async => checkCredentials()
  .then((val) => val ? greetUser() : 'Wrong credentials');

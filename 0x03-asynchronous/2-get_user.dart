Future<String> fetchUserData() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
        const Duration(seconds: 2),
        () => throw 'Cannot locate user',
    );

Future<void> getUser() async => fetchUserData()
    .then((data) => print(data))
    .catchError((err) => print('error caught: $err'));

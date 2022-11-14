class Password {
  String _password;
  Password({required String password}) : _password = password;
  String get password => _password;

  void set password(String password) {
    _password = password;
  }

  bool isValid() {
    return ((password.length >= 8) &&
        (password.length <= 16) &&
        (password.contains(new RegExp(r'[A-Z]'))) &&
        (password.contains(new RegExp(r'[a-z]'))) &&
        (password.contains(new RegExp(r'[0-9]'))));
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
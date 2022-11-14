class Password {
  String _password = '';
  Password({required String password}) : _password = password;
  String get password => _password;

  set password(String password) {
    _password = password;
  }

  bool isValid(userPassword) {
    return (
      userPassword.length >= 8 &&
      userPassword.length <= 16 &&
      userPassword.contains(RegExp(r'[A-Z]')) &&
      userPassword.contains(RegExp(r'[a-z]')) &&
      userPassword.contains(RegExp(r'[0-9]'))
    );
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
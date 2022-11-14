class Password {
  String password = '';

  bool isValid() {
    return (
      (password.length >= 8) &&
      (password.length <= 16) &&
      (password.contains(new RegExp(r'[A-Z]'))) &&
      (password.contains(new RegExp(r'[a-z]'))) &&
      (password.contains(new RegExp(r'[0-9]')))
    );
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
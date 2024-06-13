class Password {
  String? _password;

  bool isValid() {
    if (_password == null) {
      return false;
    }
    
    if (_password!.length < 8 || _password!.length > 16) {
      return false;
    }
    
    bool hasUppercase = _password!.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password!.contains(RegExp(r'[a-z]'));
    bool hasDigits = _password!.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }

  // Getter for the password property
  String? get password => _password;

  // Setter for the password property
  set password(String? value) {
    _password = value;
  }
}

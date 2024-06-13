class Password {
  
  String? _password;

  
  String? get password => _password;

  
  set password(String? value) {
    _password = value;
  }

  
  bool isValid() {
    if (_password == null) {
      return false;
    }
    
    
    if (_password!.length < 8 || _password!.length > 16) {
      return false;
    }
    
    // Check for uppercase, lowercase, and numbers
    bool hasUppercase = _password!.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password!.contains(RegExp(r'[a-z]'));
    bool hasDigits = _password!.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigits;
  }

  // Override the toString method
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

class Password {
  
  String? password;

  // Method to check if the password is valid
  bool isValid() {
    if (password == null) {
      return false;
    }
    
    
    if (password!.length < 8 || password!.length > 16) {
      return false;
    }
    
    // Check for uppercase, lowercase, and numbers
    bool hasUppercase = password!.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password!.contains(RegExp(r'[a-z]'));
    bool hasDigits = password!.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigits;
  }

  
  @override
  String toString() {
    return 'Your Password is: $password';
  }
}

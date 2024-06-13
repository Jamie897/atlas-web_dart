import 'dart:convert';
import 'dart:async';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String? userData = await fetchUserData();
    if (userData == null) {
      throw 'User data is null';
    }
    Map<String, dynamic> json = jsonDecode(userData);
    String username = json['name'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool isUserValid = await checkCredentials();
    print('There is a user: $isUserValid');
    if (isUserValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}

void main() async {
  print(await loginUser());
}

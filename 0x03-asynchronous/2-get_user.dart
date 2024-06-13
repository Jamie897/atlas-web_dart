import 'dart:convert';
import 'dart:async';
import '2-util.dart';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    Map<String, dynamic> json = jsonDecode(userData);
    String userString = 'User(id: ${json['id']}, name: ${json['name']})';
    print(userString);
  } catch (e) {
    print('error caught: $e');
  }
}

void main() async {
  await getUser();
}

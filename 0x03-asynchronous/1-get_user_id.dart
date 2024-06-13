import 'dart:convert';
import 'dart:async';
import '1-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  Map<String, dynamic> json = jsonDecode(userData);
  String userId = json['id'];
  return userId;
}

void main() async {
  String userId = await getUserId();
  print(userId);
}

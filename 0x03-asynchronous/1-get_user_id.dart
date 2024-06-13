import '0-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  // Assuming fetchUserData() returns data in JSON format like '{"id": "12345", "name": "John"}'
  // Parsing JSON to extract user ID
  Map<String, dynamic> json = jsonDecode(userData);
  String userId = json['id'];
  return userId;
}

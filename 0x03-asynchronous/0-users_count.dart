Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}
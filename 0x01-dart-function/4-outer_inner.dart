void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String lastNameInitial = nameParts[1][0];
  }

  print(inner());
}
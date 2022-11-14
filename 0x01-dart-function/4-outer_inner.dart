void outer(String name, String id) {
  String inner(String name, String id) {
    String firstname = name.split(" ")[0];
    String lastname = name.substring(
        name.indexOf(" ") + 1,
        name.indexOf(" ") + 2
    );
    return "Hello Agent $lastname.$firstname your id is $id";
  }

  print(inner(name, id));
}

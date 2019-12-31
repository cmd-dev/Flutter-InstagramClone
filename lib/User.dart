class User {
  int id;
  String name;
  String username;
  String password;
  String email;

  User.fromJsonMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        username = map["username"],
        password = map["password"],
        email = map["email"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['password'] = password;
    data['email'] = email;
    return data;
  }
}

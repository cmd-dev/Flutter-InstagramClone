class Comments {
  int postId;
  int id;

  String name;
  String email;
  String body;

  Comments.fromJsonMap(Map<String, dynamic> map)
      : postId = map["postId"],
        id = map["id"],
        name = map["name"],
        email = map["email"],
        body = map["body"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}

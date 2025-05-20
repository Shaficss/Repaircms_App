class Post {
  String? id;
  String? name;
  String? avatar;
  String? createdAt;

  Post({this.id, this.name, this.avatar, this.createdAt});

  Post.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    avatar = json['avatar'];
    createdAt = json['createdAt'];
  }
}
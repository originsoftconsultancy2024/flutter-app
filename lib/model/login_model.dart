class LoginModel {
  String? username;
  String? password;

  LoginModel({
    required this.password,
    required this.username,
  });

  LoginModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["password"] = password;
    return _data;
  }
}

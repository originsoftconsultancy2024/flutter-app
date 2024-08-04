
class AuthModel {
  final String username;
  final String password;

  AuthModel(this.username, this.password);

  factory AuthModel.fromJson(Map map) {
    return AuthModel(map['username'], map['password']);
  }
}

class UserAuth {
  static UserAuth? _instance;

  UserAuth._();

  static UserAuth get instance => _instance ??= UserAuth._();

  late String name;
  late String email;
  late String token;
  late String? picture;

  void add({
    required String name,
    required String email,
    required String token,
    String? picture,
  }) {
    this.name = name;
    this.email = email;
    this.picture = picture;
    this.token = token;
  }

  void clear() {
    _instance = UserAuth._();
  }
}

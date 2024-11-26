class User {
  final String username;
  final String password;
  final String profileImage;

  User({
    required this.username,
    required this.password,
    required this.profileImage,
  });

  Map<String, String> toMap() {
    return {
      'username': username,
      'password': password,
      'profileImage': profileImage,
    };
  }

  factory User.fromMap(Map<String, String> map) {
    return User(
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      profileImage: map['profileImage'] ?? '',
    );
  }
}

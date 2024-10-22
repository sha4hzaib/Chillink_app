class User {
  final String username;
  final String password;
  final String profileImage;

  User({
    required this.username,
    required this.password,
    required this.profileImage,
  });

  // Method to convert User data to a map (useful for storing in SharedPreferences or databases)
  Map<String, String> toMap() {
    return {
      'username': username,
      'password': password,
      'profileImage': profileImage,
    };
  }

  // Method to create a User object from a map
  factory User.fromMap(Map<String, String> map) {
    return User(
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      profileImage: map['profileImage'] ?? '',
    );
  }
}

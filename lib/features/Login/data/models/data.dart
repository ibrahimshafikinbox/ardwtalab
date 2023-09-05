class Login_Model {
  final String token;
  final UserLogin userlogin;

  Login_Model({required this.token, required this.userlogin});

  factory Login_Model.fromJson(Map<String, dynamic> json) {
    return Login_Model(
      token: json['token'],
      userlogin: UserLogin.fromJson(json['data']),
    );
  }
}

class UserLogin {
  final int id;
  final String name;
  final String phone;
  final String avatar;
  final int active;
  final String user_type;
  final String created_at;
  final int new_notifications;

  UserLogin({
    required this.id,
    required this.name,
    required this.phone,
    required this.avatar,
    required this.active,
    required this.user_type,
    required this.created_at,
    required this.new_notifications,
  });

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return UserLogin(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      avatar: json['avatar'],
      active: json['active'],
      user_type: json['user_type'],
      created_at: json['created_at'],
      new_notifications: json['new_notifications'],
    );
  }
}

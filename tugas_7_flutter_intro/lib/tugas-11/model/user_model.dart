class UserModel {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  UserModel({
    required this.id,
    required this.avatar,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'], 
    avatar: json['avatar'],
    email: json['email'], 
    firstName: json['first_name'], 
    lastName: json['last_name']
  );
}
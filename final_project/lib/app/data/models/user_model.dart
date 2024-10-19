class TUser {
    int id;
    int roleId;
    String? roleName;
    String username;
    String email;
    String password;
    String? address;
    String? noHp;
    String? createdAt;
    String? updatedAt;

    TUser({
      required this.id,
      required this.roleId,
      this.roleName,
      required this.username,
      required this.email,
      required this.password,
      this.address,
      this.noHp,
      this.createdAt,
      this.updatedAt,
    });

    factory TUser.fromJson(Map<String, dynamic> json) => TUser(
      id: json['id'],
      roleId: json['role_id'],
      roleName: json['role_name'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      address: json['address'],
      noHp: json['no_hp'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at']
    );

    TUser copyWith({
      required int? id,
      required int? roleId,
      String? roleName,
      required  String? username,
      required String? email,
      required String? password,
      String? address,
      String? noHp,
      String? createdAt,
      String? updatedAt,
    }) => TUser(
      id: this.id,
      roleId: this.roleId,
      roleName: roleName ?? this.roleName,
      username: this.username,
      email: this.email,
      password: this.password,
      address: address ?? this.address,
      noHp: noHp ?? this.noHp,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
}

List<TUser> sampleUser = List.from([
  {
    "id": 1,
    "role_id": 1,
    "role_name": "admin",
    "username": "admin",
    "email": "admin@gmail.com",
    "password": "password",
    "address": "123 Admin",
    "no_hp": "1234567890",
    "created_at": "2024-08-09T12:19:00.739804Z",
    "updated_at": "2024-08-09T12:19:00.739804Z"
  },
  {
    "id": 2,
    "role_id": 2,
    "role_name": "member",
    "username": "member1",
    "email": "member1@gmail.com",
    "password": "password",
    "address": "456 User",
    "no_hp": "0987654321",
    "created_at": "2024-08-09T12:19:00.739804Z",
    "updated_at": "2024-08-09T12:19:00.739804Z"
  }
].map((user) => TUser.fromJson(user)));
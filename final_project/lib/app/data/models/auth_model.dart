class TLogin {
  String token;
  dynamic data;

  TLogin({
    required this.token,
    this.data,
  });

  factory TLogin.fromJson(Map<String, dynamic> json) => TLogin(
      token: json['token'],
      data: json['data'],
    );

  TLogin copyWith({
    String? token,
    dynamic data,
  }) => 
    TLogin(
      token: token ?? this.token,
      data: data ?? this.data,
    );
}

class Login {
  final String egCode = '+20';
  final String phone;

  Login(this.phone);

  Map<String, dynamic> toJson() => {'phone_code': egCode, "phone": phone};
}

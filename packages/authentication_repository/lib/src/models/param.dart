class SignupParam {
  String name;
  String email;
  String password;

  SignupParam({
    required this.email,
    required this.name,
    required this.password,
  });
}

class SigninParam {
  String email;
  String password;

  SigninParam({required this.email, required this.password});
}

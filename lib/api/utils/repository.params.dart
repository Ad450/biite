///These objects are used as parameters for some repository methods
///
/// Signup parameter
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

/// Signin parameter
class SigninParam {
  String email;
  String password;

  SigninParam({required this.email, required this.password});
}

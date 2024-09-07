///These objects are used as parameters for some repository methods
///
/// Signup parameter
class SignupParam {
  String firstName;
  String lastName;
  String email;
  String password;

  SignupParam({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
  });
}

/// Signin parameter
class SigninParam {
  String email;
  String password;

  SigninParam({required this.email, required this.password});
}

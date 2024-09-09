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

// Create project params
class CreateProjectParam {
  final String title;
  final String description;
  final List<String> files;
  final List<String> tags;
  final double rate;

  CreateProjectParam({
    required this.description,
    required this.files,
    required this.rate,
    required this.tags,
    required this.title,
  });
}

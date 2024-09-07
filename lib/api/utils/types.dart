/// is thrown as a user readable message on exceptions
///
class UIError {
  String message;

  UIError(this.message);
}

/// This object is returned by operations that
/// return void
///
class VoidType {
  const VoidType();
}

import 'package:biite/api/models/message.model.dart';

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

// message return type
class MessageReturnType {
  final List<MessageModel> ownerMessages;
  final List<MessageModel> peerMessages;

  MessageReturnType({required this.ownerMessages, required this.peerMessages});
}

class MessageParam {
  final String text;
  final String roomId;

  MessageParam({required this.roomId, required this.text});
}

// create bid param
class CreateBidParam {
  final String projectId;
  final String? bidId;
  final List<String> tags;
  final String ownerId;
  final String description;
  final double rate;

  CreateBidParam({
    this.bidId,
    required this.projectId,
    required this.ownerId,
    required this.description,
    required this.rate,
    required this.tags,
  });
}

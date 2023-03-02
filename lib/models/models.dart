class Attachment {
  const Attachment({
    required this.url,
  });

  final String url;
}

class Email {
  const Email({
    required this.sender,
    required this.recipients,
    required this.subject,
    required this.content,
    this.replies = 0,
    this.attachments = const [],
  });

  final User sender;
  final List<User> recipients;
  final String subject;
  final String content;
  final List<Attachment> attachments;
  final double replies;
}

class Name {
  const Name({
    required this.first,
    required this.last,
  });

  final String first;
  final String last;
  String get fullName => '$first $last';
}

class User {
  const User({
    required this.name,
    required this.avatarUrl,
    required this.lastActive,
  });

  final Name name;
  final String avatarUrl;
  final DateTime lastActive;
}

// The Attachment class represents an attachment in an email and has a required parameter url which is a String type that represents the location or link of the attachment.
// The Email class represents an email message and has several parameters:
// sender is a required parameter that represents the sender of the email and is of type User.
// recipients is a required parameter that represents the list of recipients of the email and is of type List<User>.
// subject is a required parameter that represents the subject of the email and is of type String.
// content is a required parameter that represents the content of the email and is of type String.
// replies is an optional parameter that represents the number of replies to the email and is of type double.
// attachments is an optional parameter that represents a list of attachments in the email and is of type List<Attachment>.
// The Name class represents a name and has two required parameters:
// first represents the first name and is of type String.
// last represents the last name and is of type String.
// It also has a getter fullName that concatenates the first and last names with a space in between.
// The User class represents a user and has three required parameters:
// name represents the name of the user and is of type Name.
// avatarUrl represents the avatar or profile picture of the user and is of type String.
// lastActive represents the last time the user was active and is of type DateTime.



// Regenerate response
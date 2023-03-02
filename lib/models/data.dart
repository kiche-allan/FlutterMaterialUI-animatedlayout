import 'models.dart';

final User user_0 = User(
    name: const Name(first: 'Me', last: ''),
    avatarUrl: 'assets/avatar_1.png',
    lastActive: DateTime.now());
final User user_1 = User(
    name: const Name(first: '老', last: '强'),
    avatarUrl: 'assets/avatar_2.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));
final User user_2 = User(
    name: const Name(first: 'So', last: 'Duri'),
    avatarUrl: 'assets/avatar_3.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 20)));
final User user_3 = User(
    name: const Name(first: 'Lily', last: 'MacDonald'),
    avatarUrl: 'assets/avatar_4.png',
    lastActive: DateTime.now().subtract(const Duration(hours: 2)));
final User user_4 = User(
    name: const Name(first: 'Ziad', last: 'Aouad'),
    avatarUrl: 'assets/avatar_5.png',
    lastActive: DateTime.now().subtract(const Duration(hours: 6)));

final List<Email> emails = [
  Email(
    sender: user_1,
    recipients: [],
    subject: '豆花鱼',
    content: '最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。',
  ),
  Email(
    sender: user_2,
    recipients: [],
    subject: 'Dinner Club',
    content:
        "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone else have other suggestions for dinner club this week? I'm so intrigued by this idea of a noodle restaurant where no one gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
      sender: user_3,
      recipients: [],
      subject: 'This food show is made for you',
      content:
          "Ping– you'd love this new food show I started watching. It's produced by a Thai drummer who started getting recognized for the amazing vegan food she always brought to shows.",
      attachments: [const Attachment(url: 'assets/thumbnail_1.png')]),
  Email(
    sender: user_4,
    recipients: [],
    subject: 'Volunteer EMT with me?',
    content:
        'What do you think about training to be volunteer EMTs? We could do it together for moral support. Think about it??',
  ),
];

final List<Email> replies = [
  Email(
    sender: user_2,
    recipients: [
      user_3,
      user_2,
    ],
    subject: 'Dinner Club',
    content:
        "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone else have other suggestions for dinner club this week? I'm so intrigued by this idea of a noodle restaurant where no one gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
    sender: user_0,
    recipients: [
      user_3,
      user_2,
    ],
    subject: 'Dinner Club',
    content:
        "Yes! I forgot about that place! I'm definitely up for taking a risk this week and handing control over to this mysterious noodle chef. I wonder what happens if you have allergies though? Lucky none of us have any otherwise I'd be a bit concerned.\n\nThis is going to be great. See you all at the usual time?",
  ),
];


// The Attachment class represents a file attachment that can be included in an email. It has a single required field url which is a string representing the location of the file.

// The Email class represents an email message, and has several required fields including sender, recipients, subject, and content. It also has optional fields including replies which is a count of the number of replies the email has received, and attachments which is a list of Attachment objects representing any files attached to the email.

// The Name class represents a user's name, and has two required fields first and last. It also has a getter fullName which returns the full name as a single string.

// The User class represents a user account in the email app, and has three required fields name, avatarUrl, and lastActive. The name field is a Name object representing the user's name, avatarUrl is a string representing the location of the user's avatar image, and lastActive is a DateTime object representing the last time the user was active in the app.

// Finally, there are some example instances of these classes representing some emails and users in the app. The emails list contains several Email objects representing incoming messages, while the replies list contains some Email objects representing replies to a previous message. The user_0 through user_4 objects represent some example user accounts in the app.
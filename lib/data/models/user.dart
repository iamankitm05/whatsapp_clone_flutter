import 'package:equatable/equatable.dart';
import 'package:whatsapp/core/constants/app_images.dart';

class User extends Equatable {
  final String name;
  final String bio;
  final String avatar;
  final DateTime time;
  final bool? calling;

  const User({
    required this.name,
    required this.bio,
    required this.avatar,
    required this.time,
    this.calling,
  });

  @override
  List<Object?> get props => [name, bio, avatar, time];

  static List<User> get users => _users;
  static List<User> get chats => [..._users, ..._users];
  static List<User> get status => _users;
  static List<User> get calls =>
      _users.where((element) => element.calling != null).toList();

  static final _users = <User>[
    User(
      name: 'Aliena',
      bio: 'Hello there! How\'s your day going?',
      avatar: AppImages.alienaPng,
      time: DateTime.now(),
      calling: true,
    ),
    User(
      name: 'Wade',
      bio: 'Just wanted to drop by and say hi!',
      avatar: AppImages.wadePng,
      time: DateTime.now(),
    ),
    User(
      name: 'Dave',
      bio: ' Remember to drink enough water today.',
      avatar: AppImages.davePng,
      time: DateTime.now(),
    ),
    User(
      name: 'Jorge',
      bio: 'Did you know that honey never spoils? It\'s true!',
      avatar: AppImages.jorgePng,
      time: DateTime.now(),
    ),
    User(
      name: 'Miles',
      bio: 'What\'s your all-time favorite movie?',
      avatar: AppImages.milesPng,
      time: DateTime.now(),
    ),
    User(
      name: 'Alisa',
      bio: 'Wishing you a fantastic and productive day ahead.',
      avatar: AppImages.alisaPng,
      time: DateTime.now(),
      calling: false,
    ),
  ];
}

import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final String message;
  final bool isSender;

  const Chat({required this.message, required this.isSender});

  @override
  List<Object?> get props => [message, isSender];

  static const chats = <Chat>[
    Chat(message: 'Nothing else ususally', isSender: false),
    Chat(message: 'what about your plans today', isSender: true),
    Chat(message: 'Great😊', isSender: false),
    Chat(message: 'Hello there! How\'s your day going?', isSender: true),
  ];
}

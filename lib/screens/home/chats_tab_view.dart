import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/data/models/user.dart';
import 'package:whatsapp/routes/app_routes.dart';

class ChatsTabView extends StatelessWidget {
  const ChatsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = User.chats;

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ListTile(
          onTap: () {
            context.pushNamed(AppRoutes.chatScreen.name);
          },
          title: Text(chat.name),
          subtitle: Text(
            chat.bio,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(chat.avatar),
            onBackgroundImageError: (exception, stackTrace) {},
            radius: 26,
          ),
          trailing: Text(DateFormat('h:mm a').format(chat.time)),
        );
      },
    );
  }
}

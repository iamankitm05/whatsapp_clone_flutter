import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp/core/constants/app_colors.dart';
import 'package:whatsapp/core/constants/app_images.dart';
import 'package:whatsapp/data/models/chat.dart';
import 'package:whatsapp/data/models/user.dart';
import 'package:whatsapp/screens/chat/chat_message_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User.users.first;
    final chats = Chat.chats;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green1,
        foregroundColor: AppColors.white,
        titleSpacing: 0,

        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(user.avatar),
              onBackgroundImageError: (exception, stackTrace) {},
              radius: 20,
            ),
            Gap(8),
            Expanded(child: Text(user.name)),
          ],
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          PopupMenuButton(itemBuilder: _itemBuilder),
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.chatBackgroundJpg),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return Container(
                    padding: EdgeInsets.only(
                      left: chat.isSender ? 10 : 40,
                      right: chat.isSender ? 40 : 10,
                      top: 16,
                      bottom: 16,
                    ),
                    margin: EdgeInsets.only(
                      left: chat.isSender ? 40 : 0,
                      right: chat.isSender ? 0 : 40,
                      top: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          chat.isSender
                              ? AppImages.senderMessageBgPng
                              : AppImages.receiverMessageBgPng,
                        ),
                      ),
                    ),
                    child: Text(
                      chat.message,
                      textAlign: chat.isSender
                          ? TextAlign.end
                          : TextAlign.start,
                    ),
                  );
                },
              ),
            ),
            ChatMessageBox(),
          ],
        ),
      ),
    );
  }

  List<PopupMenuEntry> _itemBuilder(BuildContext context) {
    return [
      PopupMenuItem(onTap: () {}, child: Text('View contact')),
      PopupMenuItem(onTap: () {}, child: Text('Media, links, and docs')),
      PopupMenuItem(onTap: () {}, child: Text('Search')),
      PopupMenuItem(onTap: () {}, child: Text('Unmute notifications')),
      PopupMenuItem(onTap: () {}, child: Text('Disappearing messages')),
      PopupMenuItem(onTap: () {}, child: Text('Wallpapers')),
    ];
  }
}

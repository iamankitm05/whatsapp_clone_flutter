import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp/core/constants/app_colors.dart';
import 'package:whatsapp/core/constants/app_images.dart';
import 'package:whatsapp/data/models/user.dart';
import 'package:whatsapp/screens/chat/chat_message_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User.users.first;

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
            Expanded(child: ListView(children: [])),
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

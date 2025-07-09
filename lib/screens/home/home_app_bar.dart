import 'package:flutter/material.dart';
import 'package:whatsapp/core/constants/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          backgroundColor: AppColors.green1,
          foregroundColor: AppColors.white,
          title: Text('WhatsApp'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(itemBuilder: _itemBuilder),
          ],
        ),
        ColoredBox(
          color: AppColors.green1,
          child: TabBar(
            dividerHeight: 0,
            labelColor: AppColors.white,
            dividerColor: AppColors.white,
            indicatorColor: AppColors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            unselectedLabelColor: AppColors.white,
            tabs: [
              Tab(icon: Icon(Icons.groups, size: 32)),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(2 * kToolbarHeight);

  List<PopupMenuEntry> _itemBuilder(BuildContext context) {
    return [
      PopupMenuItem(onTap: () {}, child: Text('New group')),
      PopupMenuItem(onTap: () {}, child: Text('New broadcast')),
      PopupMenuItem(onTap: () {}, child: Text('Linked devices')),
      PopupMenuItem(onTap: () {}, child: Text('Starred messages')),
      PopupMenuItem(onTap: () {}, child: Text('Payments')),
      PopupMenuItem(onTap: () {}, child: Text('Settings')),
    ];
  }
}

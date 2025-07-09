import 'package:flutter/material.dart';
import 'package:whatsapp/core/constants/app_colors.dart';
import 'package:whatsapp/screens/home/calls_tab_view.dart';
import 'package:whatsapp/screens/home/chats_tab_view.dart';
import 'package:whatsapp/screens/home/groups_tab_view.dart';
import 'package:whatsapp/screens/home/home_app_bar.dart';
import 'package:whatsapp/screens/home/status_tab_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: HomeAppBar(),
        body: TabBarView(
          children: [
            GroupsTabView(),
            ChatsTabView(),
            StatusTabView(),
            CallsTabView(),
          ],
        ),
      ),
    );
  }
}

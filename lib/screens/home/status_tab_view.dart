import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/core/constants/app_colors.dart';
import 'package:whatsapp/data/models/user.dart';

class StatusTabView extends StatelessWidget {
  const StatusTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final myStatus = User.users.first;
    final statuses = User.status;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ListTile(
            onTap: () {},
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(myStatus.avatar),
                  onBackgroundImageError: (exception, stackTrace) {},
                  radius: 28,
                ),

                Positioned(
                  bottom: -5,
                  right: -5,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.green1,
                      border: Border.all(color: AppColors.white, width: 2.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          sliver: SliverToBoxAdapter(child: Text('Recent updates')),
        ),
        SliverList.builder(
          itemCount: statuses.length,
          itemBuilder: (context, index) {
            final status = statuses[index];

            return ListTile(
              onTap: () {},
              title: Text(status.name),
              subtitle: Text(DateFormat('EEEE, h:mm a').format(status.time)),
              leading: CircleAvatar(
                backgroundColor: AppColors.green2,
                radius: 27,
                child: CircleAvatar(
                  backgroundImage: AssetImage(status.avatar),
                  onBackgroundImageError: (exception, stackTrace) {},
                  radius: 24,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

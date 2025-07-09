import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/core/constants/app_colors.dart';
import 'package:whatsapp/data/models/user.dart';

class CallsTabView extends StatelessWidget {
  const CallsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final calls = User.calls;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ListTile(
            onTap: () {},
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
            leading: CircleAvatar(
              radius: 26,
              backgroundColor: AppColors.green1,
              child: Icon(Icons.link, color: AppColors.white),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          sliver: SliverToBoxAdapter(child: Text('Recent')),
        ),
        SliverList.builder(
          itemCount: calls.length,
          itemBuilder: (context, index) {
            final call = calls[index];
            final calling = call.calling ?? false;

            return ListTile(
              onTap: () {},
              title: Text(call.name),
              subtitle: Row(
                children: [
                  if (calling)
                    Icon(Icons.call_made, color: AppColors.green1)
                  else
                    Icon(Icons.call_received, color: AppColors.darkRed),
                  Gap(6),
                  Expanded(
                    child: Text(DateFormat('EEEE, h:mm a').format(call.time)),
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(call.avatar),
                onBackgroundImageError: (exception, stackTrace) {},
                radius: 26,
              ),
              trailing: Icon(Icons.phone, color: AppColors.green1),
            );
          },
        ),
      ],
    );
  }
}

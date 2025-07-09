import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp/core/constants/app_colors.dart';
import 'package:whatsapp/core/constants/app_images.dart';
import 'package:whatsapp/core/extensions/my_toasts_ext.dart';

class GroupsTabView extends StatelessWidget {
  const GroupsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView(
      padding: EdgeInsets.all(26),
      children: [
        Image.asset(
          AppImages.illustrator1Png,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),

        Gap(20),

        Text(
          'Stay connected with a community',
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),

        Gap(10),

        Text(
          'Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you’re added to will appear here.',
          style: textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),

        Gap(10),

        InkWell(
          onTap: () {},
          child: Text(
            'See example communities',
            style: textTheme.labelLarge?.copyWith(color: AppColors.green1),
            textAlign: TextAlign.center,
          ),
        ),

        Gap(20),

        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              context.showSuccess(message: 'This is success toast.');
              context.showInfo(message: 'This is info toast.');
              context.showWarning(message: 'This is warning toast.');
              context.showError(message: 'This is error toast.');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.green1,
              foregroundColor: AppColors.white,
            ),
            child: Text('Start your community'),
          ),
        ),
      ],
    );
  }
}

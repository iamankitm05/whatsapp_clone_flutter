import 'package:flutter/material.dart';
import 'package:whatsapp/core/constants/app_colors.dart';

class ChatMessageBox extends StatelessWidget {
  const ChatMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField()),

        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: AppColors.green1,
            foregroundColor: AppColors.white,
          ),
          icon: Icon(Icons.mic, size: 28),
        ),
      ],
    );
  }
}

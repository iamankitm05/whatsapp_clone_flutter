import 'package:flutter/material.dart';
import 'package:whatsapp/core/constants/app_colors.dart';

class ChatMessageBox extends StatelessWidget {
  const ChatMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 150),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Message',
                    fillColor: AppColors.white,
                    filled: true,
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_emotions),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.link)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: AppColors.green1,
              foregroundColor: AppColors.white,
            ),
            icon: Icon(Icons.mic, size: 28),
          ),
        ],
      ),
    );
  }
}

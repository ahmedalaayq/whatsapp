import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/core/theme/app_text_styles.dart';

class WhatsAppChatBody extends StatelessWidget {
  const WhatsAppChatBody({super.key, required this.message});

  final Map message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            //* width,height
            radius: 25,
            backgroundColor: AppColors.whatsAppCategoryMidLightGreen,
            child: Icon(
              Icons.person,
              size: 28,
              color: AppColors.whatsAppCategoryWhite,
            ),
          ),
          title: Text(message['title'],style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(message['subTitle'],style: TextStyle(fontWeight: FontWeight.w400),),
          trailing: Text(
            message['trailing'],
            style: AppTextStyles.heading3Bold.copyWith(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
        Divider(indent: 55, color: AppColors.whatsAppCategoryWhite),
      ],
    );
  }
}

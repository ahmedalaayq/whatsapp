import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.white,
        backgroundColor: AppColors.whatsAppCategoryDarkGreen,
        title: Text(
          'واتساب',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}

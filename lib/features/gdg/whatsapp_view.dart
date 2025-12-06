import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/features/auth/login/presentation/views/widgets/custom_text_form_field.dart';
import 'package:whatsapp/features/gdg/widgets/custom_app_bar.dart';
import 'package:whatsapp/features/gdg/widgets/whatsapp_category_item.dart';
import 'package:whatsapp/features/gdg/widgets/whatsapp_chat_body.dart';

import 'widgets/whatsapp_chat_body_list.dart';

class WhatsappView extends StatefulWidget {
  const WhatsappView({super.key});

  @override
  State<WhatsappView> createState() => _WhatsappViewState();
}

class _WhatsappViewState extends State<WhatsappView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                SizedBox(height: 8),
                CustomTextFormField(hintText: 'البحث...', autofillHints: []),
                SizedBox(height: 16),
                //todo: WhatsApp Category List
                WhatsappCategoryList(),
                SizedBox(height: 4),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.archive_outlined),
                    title: Text(
                      'الدردشات المؤرشفة',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 4, 4, 4),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(color: AppColors.whatsAppCategoryWhite),
                WhatsAppChatBodyList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



/*
    ListView , ListView.builder(), ListView.separated 
 */

//! Lazy Building 
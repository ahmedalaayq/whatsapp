import 'package:flutter/material.dart';

import 'whatsapp_chat_body.dart';

class WhatsAppChatBodyList extends StatefulWidget {
  const WhatsAppChatBodyList({super.key});

  @override
  State<WhatsAppChatBodyList> createState() => _WhatsAppChatBodyListState();
}

class _WhatsAppChatBodyListState extends State<WhatsAppChatBodyList> {
  final List<Map<String, String>> messages = [
    {'title': 'أحمد عماد', 'subTitle': 'هات عيش وانت جاي', 'trailing': '16:14'},
    {'title': 'سارة محمد', 'subTitle': 'متى سنلتقي؟', 'trailing': '15:42'},
    {'title': 'عمر حسن', 'subTitle': 'شكراً على المساعدة', 'trailing': '14:30'},
    {
      'title': 'فاطمة علي',
      'subTitle': 'هل انتهيت من المشروع؟',
      'trailing': '13:55',
    },
    {'title': 'خالد يوسف', 'subTitle': 'تمام، أراك غداً', 'trailing': '12:18'},
    {
      'title': 'منى إبراهيم',
      'subTitle': 'محتاج أتكلم معاك ضروري',
      'trailing': '11:05',
    },
    {
      'title': 'حسن محمود',
      'subTitle': 'الاجتماع الساعة 3',
      'trailing': '10:22',
    },
    {
      'title': 'نور عادل',
      'subTitle': 'ممكن تبعتلي الملف؟',
      'trailing': '09:47',
    },
    {'title': 'تامر سمير', 'subTitle': 'أنا في الطريق', 'trailing': '08:30'},
    {'title': 'ليلى احمد', 'subTitle': 'تصبح على خير', 'trailing': 'أمس'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return Directionality(
          textDirection: TextDirection.rtl,
          child: WhatsAppChatBody(message: message),
        );
      },
    );
  }
}

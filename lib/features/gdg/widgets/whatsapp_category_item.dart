import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';

class WhatsappCategoryList extends StatefulWidget {
  const WhatsappCategoryList({super.key});

  @override
  State<WhatsappCategoryList> createState() => _WhatsappCategoryListState();
}

class _WhatsappCategoryListState extends State<WhatsappCategoryList> {
  int _currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(buildCategoryList().length, (index) {
          bool isSelected = _currentIndex == index;
          return InkWell(
            splashFactory: NoSplash.splashFactory,
            splashColor: Colors.transparent,
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            onTap: () {
              _currentIndex = index;
              setState(() {});
            },
            child: ChoiceChip(
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              labelStyle: TextStyle(
                color: isSelected
                    ? AppColors.whatsAppCategoryDarkGreen
                    : Colors.black,
                fontWeight: FontWeight.bold,
              ),
              color: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return AppColors.whatsAppCategoryMidLightGreen.withValues(
                    alpha: 0.4,
                  );
                } else {
                  return Colors.grey.shade200;
                }
              }),
              selected: isSelected,
              label: Text(buildCategoryList()[index]),
              selectedColor: Colors.red,
              showCheckmark: false,
            ),
          );
        }),
      ),
    );
  }

  List<String> buildCategoryList() {
    return [
      'الكل',
      'غير مقروء',
      'المفضلة',
      'المجموعات',
      'GDG',
      'الكلية'
    ];
  }
}

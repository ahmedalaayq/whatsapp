import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/core/theme/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    required this.autofillHints,
  });
  final String hintText;
  final FormFieldValidator? validator;
  final List<String> autofillHints;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator:
          validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return 'الحقل مطلوب';
            }
            return null;
          },
      autofillHints: autofillHints,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        hintText: hintText,
        hintStyle: AppTextStyles.heading1Bold.copyWith(
          fontSize: 16,
          color: Color(0xFF626262),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainer,
        border: _buildTextFieldBorder(),
        focusedBorder: _buildTextFieldBorder(AppColors.primaryColor,2),
        enabledBorder: _buildTextFieldBorder(),
        errorStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        errorBorder: _buildTextFieldBorder(Colors.red,1.2),
        focusedErrorBorder: _buildTextFieldBorder(Colors.red,1.5),
      ),
    );
  }

  OutlineInputBorder _buildTextFieldBorder([Color? color, double? width]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          width: width ?? 1,
          color: color ?? Colors.transparent,
        ),
      );
}

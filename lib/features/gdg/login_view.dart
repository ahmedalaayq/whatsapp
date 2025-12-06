import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/core/theme/app_text_styles.dart';
import 'package:whatsapp/features/gdg/whatsapp_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomForm(),
        ),
      ),
    );
  }
}

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  late GlobalKey<FormState> _formKey;
  late AutovalidateMode _autovalidateMode;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _autovalidateMode = AutovalidateMode.always;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Center(
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          SizedBox(height: 26),
          Center(
            child: Text(
              'أهلا بيك',
              style: AppTextStyles.heading3Bold.copyWith(
                color: Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: 74),

          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الحقل مطلوب';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'الايميل',
              suffixIcon: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الحقل مطلوب';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'كلمة المرور',
              suffixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'نسيت كلمة المرور ؟',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.push(WhatsappView());
              }
            },
            child: Text(
              'تسجيل الدخول',
              style: AppTextStyles.heading3Bold.copyWith(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

extension Navigation on BuildContext {
  push(Widget widget) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}

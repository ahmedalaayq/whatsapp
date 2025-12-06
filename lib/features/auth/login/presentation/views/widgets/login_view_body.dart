import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/core/routers/app_routes.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/core/theme/app_text_styles.dart';

import 'custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CustomForm()));
  }
}

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: AutofillGroup(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: AppTextStyles.heading2Bold.copyWith(
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
                CustomTextFormField(
                  hintText: 'الايميل',
                  autofillHints: [AutofillHints.email],
                ),
                SizedBox(height: 29),
                CustomTextFormField(
                  hintText: 'كلمة المرور',
                  autofillHints: [AutofillHints.password],
                ),
                SizedBox(height: 30),
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
                    if (_formKey.currentState?.validate() ?? false) {
                      TextInput.finishAutofillContext();
                    
                    }
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: AppTextStyles.heading3Bold.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: InkWell(
                    overlayColor: WidgetStatePropertyAll(Colors.transparent),
                    splashColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: ()
                    {
                        Navigator.pushNamed(context, AppRoutes.signUpView);
                    },
                    child: Text(
                      'إنشاء حساب جديد',
                      style: TextStyle(
                        color: Color(0xFF494949),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

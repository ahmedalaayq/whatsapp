import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/core/theme/app_colors.dart';
import 'package:whatsapp/core/theme/app_text_styles.dart';
import 'package:whatsapp/features/auth/login/presentation/views/widgets/custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                    'إنشاء حساب',
                    style: AppTextStyles.heading2Bold.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 26),
                Center(
                  child: FittedBox(
                    child: Text(
                      'أنشئ حساب لمواصلة استخدام التطبيق',
                      style: AppTextStyles.heading3Bold.copyWith(
                        color: Color(0xFF000000),
                      ),
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
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      TextInput.finishAutofillContext();
                    }
                  },
                  child: Text(
                    'إنشاء حساب',
                    style: AppTextStyles.heading3Bold.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    'تمتلك حساب بالفعل ؟ ',
                    style: TextStyle(
                      color: Color(0xFF494949),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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

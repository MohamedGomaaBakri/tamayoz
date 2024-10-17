import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_password_field.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import 'custom_auth_options.dart';
import 'custom_divider.dart';
import 'donot_have_account.dart';
import 'login_option.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
             Center(
              child: Text(
                '! مرحباً بك',
                textAlign: TextAlign.center,
                style: Styles.style24.copyWith(color: const Color(0xFF08749F)) ,
              ),
            ),
            const SizedBox(height: 5),
             Text(
              'قم بتسجيل الدخول',
              textAlign: TextAlign.center,
              style: Styles.style24,
            ),
            const SizedBox(height: 24),
             const LoginOption(
            ),
            const SizedBox(height: 24),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'البريد الإلكتروني',
                  style: Styles.style14
                ),
              ),
            ),
            const SizedBox(height: 8,),
            CustomTextFormField(
              hintText: 'exmail@mail.com',
              textInputType: TextInputType.emailAddress,
              obscureText: false,
              onSaved: (p0) {
              },
            ),
            const SizedBox(height: 8),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'كلمة المرور',
                  style: Styles.style14,
                ),
              ),
            ),
            const SizedBox(height: 8),
            CustomPasswordField(
              onSaved: (p0) {

              },
            ),
            const SizedBox(height: 12),
             Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'هل نسيت كلمة المرور؟',
                  style: Styles.style14.copyWith( color: const Color(0xFF08749F)),
                ),
              ),
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'تسجيل',
              onPressed: () {
              },
            ),
            const SizedBox(height: 24,),
             const CustomDivider(),
            const SizedBox(height: 20),
            const CustomAuthOptions(),
            const SizedBox(height: 57,),
            const DonotHaveAccount(),
          ],
        ),
      ),
    );
  }
}








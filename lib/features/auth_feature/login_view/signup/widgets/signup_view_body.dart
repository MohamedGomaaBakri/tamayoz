import 'package:flutter/material.dart';
import 'package:tamayoz/core/utils/styles.dart';
import 'package:tamayoz/core/utils/widgets/customdatepickerfield.dart';
import 'package:tamayoz/core/utils/widgets/dropdown_form_field.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../login/widgets/login_option.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios ,
          color: Color(0xff08749F),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Image(
                  image: AssetImage('assets/images/signuplogo.png')
              ),
            ),
            const SizedBox(height: 24),
            const LoginOption(),
            const SizedBox(height: 16),
             Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                    'تسجيل عضوية جديد',

                  style: Styles.style18,
                ),
              ),
            ),
            const SizedBox(height: 24),
             Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'الاسم الأول',
                  style: Styles.style16,
                ),
              ),
            ),
            const SizedBox(height: 14,),
            CustomTextFormField(
                textInputType: TextInputType.name,
                hintText: ' الاسم الأول',
                onSaved: (value) {},
            ),
            const SizedBox(height: 16,),
             Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'الاسم بالكامل',
                  style:Styles.style16
                ),
              ),
            ),
            const SizedBox(height: 14,),
            CustomTextFormField(
              textInputType: TextInputType.name,
              hintText: ' الاسم بالكامل',
              onSaved: (value) {},
            ),
            const SizedBox(height: 16,),
             Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'التاريخ',
                  style: Styles.style16 ,
                ),
              ),
            ),
            const SizedBox(height: 14,),
            CustomDatePickerFormField(
              hintText: 'التاريخ',
              onDateSelected: (value) {},
            ),
            const SizedBox(height: 16,),
             Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'النوع',
                  style: Styles.style16 ,
                ),
              ),
            ),
            const SizedBox(height: 14,),
            CustomDropdownFormField(
              hintText: 'النوع',
              onChanged: (value) {},
              items: const ['ذكر', 'انثى'],
            ),
            const SizedBox(height: 16,),

          ],
        ),
      ),
    );
  }
}

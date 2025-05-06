import 'package:assignment8/core/functions/navigation.dart';
import 'package:assignment8/core/text/app_text.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/core/widget/custom_elevated_button.dart';
import 'package:assignment8/features/auth/widget/custom_container.dart';
import 'package:assignment8/features/auth/widget/custom_text_field.dart';
import 'package:assignment8/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 45),
          CustomTextField(text: AppText.userName),
          CustomTextField(text: AppText.password),
          CustomTextField(text: AppText.confirm),
          SizedBox(height: 36),
          CustomElevatedButton(
            onPressed: () {
              customReplacementNavigate(context, DashboardPage());
            },
            text: AppText.signUp,
          ),
          SizedBox(height: 27),
          Text(AppText.or, style: TextStyle(color: AppPalette.hintColor)),
          SizedBox(height: 19),
          CustomContainer(),
        ],
      ),
    );
  }
}

import 'package:assignment8/core/functions/navigation.dart';
import 'package:assignment8/core/text/app_text.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/core/widget/custom_elevated_button.dart';
import 'package:assignment8/features/auth/widget/custom_container.dart';
import 'package:assignment8/features/auth/widget/custom_text_field.dart';
import 'package:assignment8/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 45),
          CustomTextField(text: AppText.userName),
          CustomTextField(text: AppText.password),
          SizedBox(height: 45),
          CustomElevatedButton(
            onPressed: () {
              customReplacementNavigate(context, DashboardPage());
            },
            text: AppText.logIn,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppText.forgot,
                style: TextStyle(color: AppPalette.hintColor),
              ),
            ),
          ),
          Text(AppText.or, style: TextStyle(color: AppPalette.hintColor)),
          SizedBox(height: 19),
          CustomContainer(),
        ],
      ),
    );
  }
}

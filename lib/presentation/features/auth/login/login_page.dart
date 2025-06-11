import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_defaults.dart';
import 'widgets/dont_have_account_row.dart';
import 'widgets/login_header.dart';
import 'widgets/login_page_form.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginPageHeader(),
                LoginPageForm(),
                SizedBox(height: AppDefaults.padding),
                // SocialLogins(),
                // DontHaveAccountRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

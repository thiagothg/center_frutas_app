import 'package:flutter/material.dart';

import '../../../../../core/constants/app_defaults.dart';

class SignUpPageHeader extends StatelessWidget {
  const SignUpPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Text(
          'Cadastrar no center frutas app',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

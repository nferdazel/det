import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'views/onboarding_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DetFinancial());
}

class DetFinancial extends StatelessWidget {
  const DetFinancial({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: const OnboardingView(),
    );
  }
}

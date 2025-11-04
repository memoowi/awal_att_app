import 'package:facitend/widgets/theme_toggler.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding Page'),
        actions: [ThemeToggler()],
      ),
      body: const Center(child: Text('Onboarding Page')),
    );
  }
}

import 'package:flutter/material.dart';

import '../../theme/componen.dart';
import '../../theme/theme.dart';

class OnBoarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "So nice to meet you! What do your friends call you?",
                style: semiBold4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              TextField(
                decoration: CustomComponents.textField('Your nickname...'),
              ),
              const SizedBox(height: 100),
              CustomComponents.customButton(context, '/onboarding3', 'CONTINUE')
            ],
          ),
        ),
      ),
    );
  }
}

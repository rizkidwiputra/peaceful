import 'package:flutter/material.dart';

import '../../theme/componen.dart';
import '../../theme/theme.dart';

class OnBoarding3 extends StatefulWidget {
  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

enum SingingCharacter { a, b, c }

class _OnBoarding3State extends State<OnBoarding3> {
  SingingCharacter? _character1;

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
                "Everyone’s different: Tell us your gender.",
                style: semiBold4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              ListTile(
                title: Text('Male', style: bold4.copyWith(color: white)),
                leading: Radio<SingingCharacter>(
                  fillColor: MaterialStateColor.resolveWith((states) => white),
                  value: SingingCharacter.a,
                  groupValue: _character1,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Famele', style: bold4.copyWith(color: white)),
                leading: Radio<SingingCharacter>(
                  fillColor: MaterialStateColor.resolveWith((states) => white),
                  value: SingingCharacter.b,
                  groupValue: _character1,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Neither of these',
                    style: bold4.copyWith(color: white)),
                leading: Radio<SingingCharacter>(
                  fillColor: MaterialStateColor.resolveWith((states) => white),
                  value: SingingCharacter.c,
                  groupValue: _character1,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character1 = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 100),
              CustomComponents.customButton(context, '/login', 'CONTINUE')
            ],
          ),
        ),
      ),
    );
  }
}

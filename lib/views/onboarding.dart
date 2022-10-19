import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peaceful/theme/theme.dart';
import 'package:peaceful/views/login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("asset/image/onboardingImage.png"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi there, \nWelcome to award winning anxiety.",
                    style: semiBold4,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(onPressed: () {}, child: Text("Get Started"))
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Login(),
                  ),
                );
              },
              child: Text(
                "I ALREADY HAVE AN ACCOUNT",
                style: semiBold2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

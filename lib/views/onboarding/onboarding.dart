import 'package:flutter/material.dart';
import 'package:peaceful/theme/theme.dart';

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
            AspectRatio(
              aspectRatio: 5 / 5,
              child: Container(
                decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: FractionalOffset.topLeft,
                  //     end: FractionalOffset.bottomRight,
                  //     colors: [
                  //       primaryColor.withOpacity(1),
                  //       // primaryColor.withOpacity(0.8),
                  //       primaryColor.withOpacity(0),
                  //     ],
                  //     stops: const [
                  //       0.0,
                  //       // 0.75,
                  //       1.0
                  //     ]),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: FractionalOffset.topCenter,
                    // colorFilter: ColorFilter.mode(
                    //     white.withOpacity(1.0), BlendMode.softLight),
                    image: AssetImage("asset/image/onboardingImage.png"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hi there, \nWelcome to award winning anxiety.",
                    style: semiBold4,
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/onboarding2');
                    },
                    child: Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 7),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_right_alt,
                                color: white,
                                size: 40,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Get Started",
                            style: semiBold2.copyWith(color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

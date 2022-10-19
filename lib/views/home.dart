import 'package:flutter/material.dart';

import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: context.heightQuery,
        decoration: BoxDecoration(gradient: myGradient),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xff7BBDDF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "asset/image/home/header/hello_faisal.png",
                          scale: 1.5,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Hello Faisal!',
                        style: bold3.copyWith(color: white),
                      ),
                      const Spacer(),
                      const Icon(Icons.list, color: white),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    "asset/image/home/header/how_are_you_today.png",
                    scale: 1,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'How are you feeling today?',
                    style: bold3.copyWith(color: white),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xff00182C),
                            hintText: 'Search here',
                            hintStyle: medium3.copyWith(color: primaryColor),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusColor: primaryColor,
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            suffixIcon: Container(
                              height: 40,
                              width: 50,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              // color: white,
                              child: const Icon(
                                Icons.search,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(
                          Icons.settings,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text('Features', style: bold4.copyWith(color: white)),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: primaryColor),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(60.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'asset/image/home/features/learn.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: primaryColor),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(60.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'asset/image/home/features/learn.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: primaryColor),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(60.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'asset/image/home/features/learn.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: primaryColor),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(60.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'asset/image/home/features/learn.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

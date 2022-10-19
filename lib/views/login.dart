import 'package:flutter/material.dart';

import '../theme/componen.dart';
import '../theme/theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "asset/image/Logo.png",
                scale: 1.5,
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    style: medium3.copyWith(color: primaryColor),
                    decoration: CustomComponents.textField('Email'),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: !passwordVisibility,
                    style: medium3.copyWith(color: primaryColor),
                    decoration: CustomComponents.textField('Login').copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisibility
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisibility = !passwordVisibility;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: semiBold3.copyWith(color: white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomComponents.customButton(context, '/home', 'SIGN IN'),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: white,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          'Or signing in with',
                          style: medium1.copyWith(color: grey),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: white,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      height: 70,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: white,
                      ),
                      child: Center(
                        child: Image.asset('asset/image/google.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'By signing in, you are agreeing to ou\n Terms of Service and Privacy Policy',
                    style: medium1.copyWith(color: grey),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

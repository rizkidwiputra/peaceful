import 'package:flutter/material.dart';

import 'theme.dart';

class CustomComponents {
  static Widget customButton(BuildContext context, String route, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: 70,
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: white,
        ),
        child: Center(
          child: Text(
            text,
            style: bold3.copyWith(color: primaryColor),
          ),
        ),
      ),
    );
  }

  static InputDecoration textField(String hintText) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: medium3.copyWith(color: primaryColor),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusColor: primaryColor,
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: primaryColor),
      ),
    );
  }
}

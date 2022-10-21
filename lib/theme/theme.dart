import 'package:flutter/material.dart';

//
const quicksandBold = "Quicksand-Bold";

const quicksandSemiBold = "Quicksand-Semibold";

const quicksandMedium = "Quicksand-Medium";

const quicksandRegular = "Quicksand-Regular";

const quicksandLight = "Quicksand-Light";

//color
const primaryColor = Color(0xff00203A);
const secondaryColor = Color(0xff054177);
const white = Colors.white;
const grey = Color(0xff757575);
const blueMing = Color(0xff00838F);

extension MediaQueryValues on BuildContext {
  double get widthQuery => MediaQuery.of(this).size.width;
  double get heightQuery => MediaQuery.of(this).size.height;
}

//textstyle
const semiBold4 = TextStyle(
  fontFamily: quicksandSemiBold,
  fontSize: 30,
  color: white,
);

const bold4 = TextStyle(
  fontFamily: quicksandBold,
  fontSize: 30,
);

const bold3 = TextStyle(
  fontFamily: quicksandBold,
  fontSize: 22,
);
const semiBold3 = TextStyle(
  fontFamily: quicksandSemiBold,
  fontSize: 22,
);

const medium3 = TextStyle(
  fontFamily: quicksandMedium,
  fontSize: 22,
);

const semiBold2 = TextStyle(
  fontFamily: quicksandSemiBold,
  fontSize: 16,
  color: white,
);

const semiBold1 = TextStyle(
  fontFamily: quicksandSemiBold,
  fontSize: 12,
);
const medium1 = TextStyle(
  fontFamily: quicksandMedium,
  fontSize: 12,
);

LinearGradient myGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xff054279), Color(0xff00203A)],
);

import 'package:flutter/material.dart';
import 'package:paymetns_app/theme/colors.dart';

const mainTitleSize = 33.0;
const titleSize = 22.0;
const bodySize = 16.0;
const buttonSize = 22.0;
const smallerButtonSize = 20.0;

class Styles {
  Styles._();

  static const mainTitle = TextStyle(
    color: AppColors.darkColor2,
    fontSize: mainTitleSize,
    fontWeight: FontWeight.w700,
  );

  static const title = TextStyle(
    color: AppColors.darkColor2,
    fontSize: titleSize,
    fontWeight: FontWeight.w600,
  );

  static const bodyText = TextStyle(
    color: AppColors.darkColor2,
    fontSize: bodySize,
    fontWeight: FontWeight.w300,
  );

  static const buttonTitle = TextStyle(
    color: AppColors.darkColor2,
    fontSize: buttonSize,
    fontWeight: FontWeight.w700,
  );

  static const smallerButtonTitle = TextStyle(
    color: AppColors.darkColor2,
    fontSize: smallerButtonSize,
    fontWeight: FontWeight.w700,
  );
}

import 'package:flutter/material.dart';
import 'package:paymetns_app/theme/colors.dart';
import 'package:paymetns_app/theme/styles.dart';

const defaultButtonHeight = 50.0;
const defaultSmallerButtonHeight = 40.0;
const defaultBorderRadius = 15.0;

class CommonButton extends StatelessWidget {
  final String lable;
  final VoidCallback onPressed;
  final bool autoWith;
  final bool disable;
  final bool smaller;
  final Color? backgroundColor;
  final Color? disableColor;
  final Color? textColor;
  final double? borderRadius;

  const CommonButton({
    super.key,
    required this.lable,
    required this.onPressed,
    this.autoWith = true,
    this.disable = false,
    this.smaller = false,
    this.backgroundColor,
    this.disableColor,
    this.textColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    var primaryHeight = defaultButtonHeight;
    VisualDensity visualDensity = VisualDensity.standard;
    TextStyle primaryTextStyle = Styles.buttonTitle.copyWith(
      color: textColor,
    );

    if (smaller) {
      primaryHeight = defaultSmallerButtonHeight;
      visualDensity = const VisualDensity(horizontal: 0, vertical: -1);
      primaryTextStyle = Styles.smallerButtonTitle.copyWith(
        color: textColor,
      );
    }

    final mainAxisSize = autoWith ? MainAxisSize.max : MainAxisSize.min;

    final primaryBackgroundColor = disable
        ? AppColors.darkColor3
        : backgroundColor ?? AppColors.darkColor1;

    final primaryBorderRadius = borderRadius ?? defaultBorderRadius;

    return MaterialButton(
      onPressed: disable ? null : onPressed,
      color: primaryBackgroundColor,
      splashColor: primaryBackgroundColor,
      disabledColor: disableColor,
      height: primaryHeight,
      visualDensity: visualDensity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(primaryBorderRadius),
      ),
      elevation: 0.0,
      child: Row(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(lable, style: primaryTextStyle),
        ],
      ),
    );
  }
}

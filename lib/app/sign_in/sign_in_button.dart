import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    double buttonRadius,
    double height,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          borderRadius: buttonRadius,
          color: color,
          onPressed: onPressed,
          height: height,
        );
}

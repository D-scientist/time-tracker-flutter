import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    double buttonRadius,
    double height,
    VoidCallback onPressed,
  })  : assert(assetName != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(opacity: 0, child: Image.asset(assetName)),
            ],
          ),
          borderRadius: buttonRadius,
          color: color,
          onPressed: onPressed,
          height: height,
        );
}

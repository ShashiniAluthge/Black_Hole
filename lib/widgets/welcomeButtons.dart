import 'package:black_hole/screens/signupScreen.dart';
import 'package:flutter/material.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    required this.onTap,
  });

  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final Widget onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (e) => onTap));
      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            textAlign: TextAlign.center,
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignBottomText extends StatelessWidget {
  const SignBottomText({
    super.key,
    required this.leftText,
    required this.rightText,
    required this.onTap,
  });

  final String leftText;
  final String rightText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftText,
          style: const TextStyle(
            color: Colors.black45,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              rightText,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SocialLogo extends StatelessWidget {
  const SocialLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Logo(
          Logos.facebook_f,
          size: 25,
        ),
        Logo(
          Logos.twitter,
          size: 25,
        ),
        Logo(
          Logos.google,
          size: 25,
        ),
        Logo(
          Logos.apple,
          size: 25,
        ),
      ],
    );
  }
}

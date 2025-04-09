import 'package:flutter/material.dart';

class SignButtons extends StatelessWidget {
  const SignButtons({
    super.key,
    required this.isLoading,
    required this.buttonText,
    required this.onPressed,
  });

  final bool isLoading;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 4,
          ),
          child: isLoading
              ? const SizedBox(
            width: 24.0,
            height: 24.0,
            child: CircularProgressIndicator(
              color: Colors.amber,
              strokeWidth: 3.0,
            ),
          )
              :Text(buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      );
  }
}


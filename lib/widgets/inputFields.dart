import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {

  final String label;
  final String hintText;
  final bool obscureText;
  final String obscuringCharacter;
  final TextInputType keyboardType;
  final String? Function(String?) validator;
  final TextEditingController? controller;

  const InputFields({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.validator,
    this.obscuringCharacter = '*',
    this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      obscuringCharacter:obscuringCharacter,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black26,
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black26,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent,
            //width: 2.0,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent,
            //width: 2.0,
          ),
        ),
        errorStyle: const TextStyle(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}

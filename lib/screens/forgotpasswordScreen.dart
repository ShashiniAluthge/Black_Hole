import 'package:black_hole/widgets/customScaffold.dart';
import 'package:black_hole/widgets/formScaffold.dart';
import 'package:black_hole/widgets/inputFields.dart';
import 'package:black_hole/widgets/signButtons.dart';
import 'package:black_hole/widgets/validateEmail.dart';
import 'package:flutter/material.dart';

import 'otpVerification.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarTitle: 'Back',
      backIcon: Icons.arrow_back_ios_new,
      child: FormScaffold(
        title: 'Forgot Password',
        formChildren: [
          Form(
            key: _formSignInKey,
            child: const Column(
              children: [
                InputFields(
                  label: 'Email',
                  hintText: 'Enter Email',
                  keyboardType: TextInputType.emailAddress,
                  validator: ValidateEmail.validate,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
          SignButtons(
              isLoading: isLoading,
              buttonText: 'Continue',
              onPressed: () async {
                if (_formSignInKey.currentState!.validate()) {
                  setState(() {
                    isLoading = true;
                  });

                  await Future.delayed(
                    const Duration(seconds: 2),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (e) => const OtpVerification()),
                  );

                  setState(() {
                    isLoading = false;
                  });
                }
              }),
        ],
      ),
    );
  }
}

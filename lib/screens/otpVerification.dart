import 'package:black_hole/screens/resetPasswordScreen.dart';
import 'package:flutter/material.dart';

import '../widgets/customScaffold.dart';
import '../widgets/formScaffold.dart';
import '../widgets/inputFields.dart';
import '../widgets/signButtons.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _formSignInKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarTitle: 'Back',
      backIcon: Icons.arrow_back_ios_new,
      child: FormScaffold(
        title: 'OTP Verification',
        formChildren: [
          Form(
            key: _formSignInKey,
            child: Column(
              children: [
                InputFields(
                    label: 'OTP',
                    hintText: 'Enter OTP',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter OTP';
                      }
                      return null;
                    }),
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
                    MaterialPageRoute(builder: (e) => const ResetPasswordScreen()),
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

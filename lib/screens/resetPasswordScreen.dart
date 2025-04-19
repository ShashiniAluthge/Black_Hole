import 'package:black_hole/screens/signinScreen.dart';
import 'package:black_hole/widgets/signButtons.dart';
import 'package:black_hole/widgets/validatePassword.dart';
import 'package:flutter/material.dart';

import '../widgets/customScaffold.dart';
import '../widgets/formScaffold.dart';
import '../widgets/inputFields.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool isLoading = false;
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarTitle: 'Back',
      backIcon: Icons.arrow_back_ios_new,
      child: FormScaffold(
        title: 'Reset Password',
        formChildren: [
          Form(
            key: _formSignInKey,
            child: Column(
              children: [
                InputFields(
                  controller: _newPasswordController,
                  label: 'New Password',
                  hintText: 'Enter New Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: ValidatePassword.validate,
                ),
                const SizedBox(height: 20.0),
                InputFields(
                  controller: _confirmPasswordController,
                  label: 'Confirm Password',
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm password';
                    } else if (value != _newPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
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

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (e) => const SignInScreen()),
                );
                setState(() {
                  isLoading = false;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

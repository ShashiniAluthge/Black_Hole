import 'package:black_hole/screens/signinScreen.dart';
import 'package:black_hole/widgets/customScaffold.dart';
import 'package:flutter/material.dart';
import '../widgets/formScaffold.dart';
import '../widgets/inputFields.dart';
import '../widgets/signBottomText.dart';
import '../widgets/signButtons.dart';
import '../widgets/signDivider.dart';
import '../widgets/socialLogo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberpassword = true;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarTitle: 'Back',
      backIcon: Icons.arrow_back_ios_new,
      child: FormScaffold(
        title: 'Get Started',
        formChildren: [
          Form(
            key: _formSignInKey,
            child: Column(
              children: [
                InputFields(
                  label: 'Full name',
                  hintText: 'Enter full name',
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter full name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                InputFields(
                  label: 'Email',
                  hintText: 'Enter Email',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                InputFields(
                  label: 'Password',
                  hintText: 'Enter Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: rememberpassword,
                    onChanged: (value) {
                      setState(() {
                        rememberpassword = value!;
                      });
                    },
                    activeColor: Colors.amber,
                  ),
                  const Text(
                    'I agree',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          SignButtons(
            isLoading: isLoading,
            buttonText: 'Sign up',
            onPressed: () async {
              if (_formSignInKey.currentState!.validate() && rememberpassword) {
                setState(() {
                  isLoading = true;
                });

                //simulate a delay for processing
                await Future.delayed(
                  const Duration(seconds: 2),
                );

                // ScaffoldMessenger.of(context).showSnackBar(
                //   const SnackBar(
                //     content: Text('Processing data'),
                //   ),
                // );
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (e) => const SignInScreen()));
              } else if (!rememberpassword) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please agree to processing data'),
                  ),
                );
              }
            },
          ),
          const SizedBox(height: 40.0),
          const SignDivider(
            text: 'Sign up with',
          ),
          const SizedBox(height: 20.0),
          const SocialLogo(),
          const SizedBox(height: 40.0),
          SignBottomText(
              leftText: 'Already have an account?',
              rightText: 'Sign in',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (e) => const SignInScreen()));
              }),
        ],
      ),
    );
  }
}

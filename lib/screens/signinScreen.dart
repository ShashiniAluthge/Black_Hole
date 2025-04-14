import 'package:black_hole/screens/forgotpasswordScreen.dart';
import 'package:black_hole/screens/homeScreen.dart';
import 'package:black_hole/screens/signupScreen.dart';
import 'package:black_hole/widgets/customScaffold.dart';
import 'package:black_hole/widgets/formScaffold.dart';
import 'package:black_hole/widgets/inputFields.dart';
import 'package:black_hole/widgets/signBottomText.dart';
import 'package:black_hole/widgets/signButtons.dart';
import 'package:black_hole/widgets/signDivider.dart';
import 'package:black_hole/widgets/socialLogo.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberpassword = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarTitle: 'Back',
      backIcon: Icons.arrow_back_ios_new,
      child: FormScaffold(
        title: 'Welcome Back',
        formChildren: [
          Form(
            key: _formSignInKey,
            child: Column(
              children: [
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
                    'Remember me',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (e) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          SignButtons(
            isLoading: isLoading,
            buttonText: 'Sign in',
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
                    MaterialPageRoute(builder: (e) => const HomeScreen()));
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
            text: 'Sign in with',
          ),
          const SizedBox(height: 20.0),
          const SocialLogo(),
          const SizedBox(height: 40.0),
          SignBottomText(
              leftText: 'Don\'t have an account?',
              rightText: 'Sign up',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (e) => const SignUpScreen()));
              }),
        ],
      ),
    );
  }
}

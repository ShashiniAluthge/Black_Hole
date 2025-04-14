import 'package:black_hole/screens/signinScreen.dart';
import 'package:black_hole/screens/signupScreen.dart';
import 'package:black_hole/widgets/customScaffold.dart';
import 'package:black_hole/widgets/welcomeButtons.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(

        child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Center(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: "Welcome Back!\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),),
                    TextSpan(
                        text:
                            '\nEnter personal details to your employee account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))
                  ]),
                ),
              ))),
          const Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                      child: WelcomeButtons(
                        buttonText: 'Sign in',
                        backgroundColor: Colors.white12,
                        textColor: Colors.white,
                        onTap: SignInScreen(),
                      ),
                    ),
                    Expanded(
                      child: WelcomeButtons(
                        buttonText: 'Sign up',
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        onTap: SignUpScreen(),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormScaffold extends StatelessWidget {
  final _formSignInKey = GlobalKey<FormState>();
  final List<Widget> formChildren;
  final String title;

  FormScaffold({
    super.key,
    required this.formChildren,
    required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(height: 10.0),
        ),
        Expanded(
          flex: 7,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: SingleChildScrollView(
              child: Form(
                  key: _formSignInKey,
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 50.0),
                        SafeArea(child: Column(
                          children: [
                            ...formChildren,
                          ],
                        ))
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}

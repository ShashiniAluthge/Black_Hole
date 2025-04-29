import 'package:black_hole/screens/thirdScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 23.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            children: [
              //second screen
              const SizedBox(height: 32.0),
              Center(
                  child: Image.asset(
                'assets/space2.png',
                width: 300.0,
              )),
              const SizedBox(height: 47.0),
              const Text(
                'Forem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec '
                'fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. '
                'Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad '
                'litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, '
                'ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur'
                ' vel bibendum .',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const ThirdScreen()));
                // },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Center(
                    child: Container(
                      height: 47.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(29.5)),
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'NEXT',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

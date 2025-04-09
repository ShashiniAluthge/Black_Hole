import 'package:black_hole/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 23.0, left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  //third screen
                  const SizedBox(height: 32.0),
                  Center(
                      child: Image.asset(
                    'assets/space3.png',
                    width: 300.0,
                  )),
                  const SizedBox(height: 47.0),
                  const Text(
                    'Forem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec '
                    'fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. '
                    'Maecenas eget condimentum velit, sit amet feugiat lectus. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Center(
                        child: Container(
                          height: 47.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(29.5)),
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            'SPACE DETAILS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 2.0,
                          width: double.infinity,
                          decoration: const BoxDecoration(color: Colors.white),
                        ),
                        const SizedBox(height: 15.0),
                        const Text(
                          'BLACK HOLE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Forem ipsum dolor sit amet, consectetur adipiscing elit.'
                          ' Etiam eu turpis molestie, dictum est a, mattis tellus. '
                          'Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus,'
                          ' ut interdum tellus elit sed  .',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

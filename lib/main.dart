import 'package:black_hole/secondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              elevation: 2.0,
              shadowColor: Colors.yellow,
              title: const Text(
                "Black Hole",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )
              ]),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 23.0, left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SPACE DETAILS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 33.0,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/space1.png",
                      width: 218.0,
                    ),
                  ),
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
                  const SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                    },
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
                            'SPACE DETAILS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

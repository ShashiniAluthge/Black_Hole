import 'package:black_hole/widgets/profileDetailsContainer.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 23.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 65.0,
              ),
              const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Center(
                child: ClipOval(
                  //for rounded image
                  child: Image.asset("assets/profile.jpg", width: 150.0),
                ),
              ),
              const SizedBox(height: 20.0),
              const Center(
                child: Text(
                  'David Smith',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 50.0),
              const ProfileDetailsContainer(
                icon: Icons.account_circle_outlined,
                titleText: 'User name',
                valueText: 'John David',
              ),
              const ProfileDetailsContainer(
                icon: Icons.email_outlined,
                titleText: 'Email address',
                valueText: 'john@gmail.com',
              ),
              const ProfileDetailsContainer(
                icon: Icons.phone_outlined,
                titleText: 'Phone number',
                valueText: '0771234568',
              ),
              const ProfileDetailsContainer(
                icon: Icons.wc_outlined,
                titleText: 'Gender',
                valueText: 'Male',
              ),
              const ProfileDetailsContainer(
                icon: Icons.cake_outlined,
                titleText: 'Birthday',
                valueText: '22.04.2000',
              ),
              const SizedBox(height: 50.0),
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
                        'Log out',
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

import 'package:flutter/material.dart';

class ProfileDetailsContainer extends StatelessWidget {
  final IconData icon;
  final String titleText;
  final String valueText;

  const ProfileDetailsContainer(
      {super.key,
      required this.icon,
      required this.titleText,
      required this.valueText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    icon,
                    size: 25.0,
                  ),
                ),
                const SizedBox(width: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      valueText,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

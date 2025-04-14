import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final String? appbarTitle;
  final IconData? backIcon;

  const CustomScaffold({
    super.key,
    required this.child,
    this.appbarTitle,
    this.backIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: backIcon != null
              ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(backIcon))
              : null,
          title: appbarTitle != null
              ? Text(
                  appbarTitle!,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              : null,
          titleSpacing: 0,
        ),
        body: Stack(
          children: [
            Image.asset('assets/bg.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
            SafeArea(child: child)
          ],
        ));
  }
}

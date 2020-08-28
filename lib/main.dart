import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Clip Path',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                User(1, "Fox McCloud", 5, "assets/images/avatars/star-fox-profile-fox.jpg", 1),
                User(2, "Falco Lombardi", 5, "assets/images/avatars/star-fox-profile-falco.jpg", 0),
                User(3, "Peppy Hare", 10, "assets/images/avatars/star-fox-profile-peppy.jpg", 2),
                User(4, "Slippy Toad", 2, "assets/images/avatars/star-fox-profile-slippy.jpg", 0),
                User(5, "Andrew", 5, "assets/images/avatars/star-fox-profile-andrew.jpg", 0),
                User(6, "Andross", 10, "assets/images/avatars/star-fox-profile-andross.jpg", 0),
                User(7, "General Pepper", 10, "assets/images/avatars/star-fox-profile-general-pepper.jpg", 10),
                User(8, "Leon", 10, "assets/images/avatars/star-fox-profile-leon.jpg", 0),
                User(9, "Pigma Dengar", 10, "assets/images/avatars/star-fox-profile-pigma.jpg", 1),
                User(10, "Wolf Odonell", 2, "assets/images/avatars/star-fox-profile-wolf.jpg", 2),
              ],
              padding: EdgeInsets.only(
                top: 80.0,
              ),
            ),
            ClipPath(
              child: CustomAppBar("Star Fox"),
              clipper: CustomAppBarClipper(),
            ),
          ],
        ),
      ),
    );
  }
}

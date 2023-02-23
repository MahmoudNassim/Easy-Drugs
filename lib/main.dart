import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dd/HomeScreen.dart';
import 'package:dd/LoginScreen.dart';
import 'package:dd/MedScreen.dart';
import 'package:dd/RegisterL.dart';
import 'package:dd/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      LoginScreen.RouteName: (context) => LoginScreen(),
      HomeScreen.RouteName: (context) => HomeScreen(),
      MedScreen.RouteName: (context) => MedScreen(),
      RegisterL.RouteName: (context) => RegisterL(),
    },
    home: AnimatedSplashScreen(
        splash: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('Assets/Images/E5.png'),
              height: 150,
              width: 150,
            ),
            SizedBox(
              width: 25,
            ),
            Text(
              'Ez Drugs',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        duration: 3000,
        nextScreen: HomeScreen()),
    debugShowCheckedModeBanner: false,
  ),
  );
}
 
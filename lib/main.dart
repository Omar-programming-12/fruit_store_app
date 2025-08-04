import 'package:flutter/material.dart';
import 'package:fruit_store_app/screens/home_screen.dart';
import 'package:fruit_store_app/screens/splash_screen.dart';

void main() {
  runApp(const FruitStoreApp());
}

class FruitStoreApp extends StatelessWidget {
  const FruitStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }   
}

// Steps To Build (UI)
// Step 1: Splash Screen => Screen take 3 seconds to pop to home view // Done
// Step 2: AppBar => Adress & Icons
// Step 3: Offers Section => 
// Step 4: Categories List =>
// Step 5: Fruits List =>
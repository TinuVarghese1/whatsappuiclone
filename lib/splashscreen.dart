import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Simulate a loading delay using Future.delayed
    Future.delayed(const Duration(seconds: 4), () {
      // Navigate to the main screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Homepage(), // Replace HomeScreen with your main screen
        ),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your app logo or splash image goes here
            Image.asset(
              'assets/logo-whatsapp-png-46043.png', // Replace with the path to your splash image
              width: 100, // Adjust the size as needed
              height: 100,
            ),
            SizedBox(height: 16),
            // Your app name or loading text goes here
            Text(
              'Whatsapp',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            // Optional: Add a CircularProgressIndicator for better visual feedback
          ],
        ),
      ),
    );
  }
}

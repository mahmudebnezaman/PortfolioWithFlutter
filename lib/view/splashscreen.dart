import 'package:flutter/material.dart';
import 'package:portfolio/view/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 3), () {
  //     // Navigate to the next screen after the Lottie animation
  //     if (mounted){
  //       Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) =>const AppHomePage(title: "Mahmud Ebne Zaman")),
  //       );
  //     }
  //   });
  // }

  Future<void> _loadAssets() async {
    // Simulate asset loading (e.g., network images)
    await Future.delayed(const Duration(seconds: 3)); // Simulate image load
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadAssets(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(), // Loader while assets are loading
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return const AppHomePage(title: "Mahmud Ebne Zaman"); // Display your content after loading
        } else {
          return const Center(
            child: Text('Error loading assets'),
          );
        }
      },
    );
  }
}
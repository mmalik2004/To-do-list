import 'package:firstproject/screens/homescreen.dart';
import 'package:flutter/material.dart';

// welcome screen is called splash page
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
// init (initialisation) function runs before Widget start build function to build UI.
  @override
  void initState() {
    super.initState();

    // Future.delayed is used to run code after some delay in time.
    Future.delayed(const Duration(seconds: 5),
        // this function will run after 5 second delay
        () {
      // this will navigate screen to homepage
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Home(),
      ));
    });
  }

  // build method builds the UI after init (initialisation) is complete.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}

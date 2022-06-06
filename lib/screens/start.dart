import 'package:flutter/material.dart';
import 'package:whats_up_io/widgets/button.dart';
import 'package:whats_up_io/widgets/logo.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoView(),
            GreenButton(value: "Start"),
          ],
        ),
      ),
    );
  }
}

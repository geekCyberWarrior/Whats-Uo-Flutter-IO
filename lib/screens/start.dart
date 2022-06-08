import 'package:flutter/material.dart';
import 'package:whats_up_io/screens/sign_up.dart';
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
            Expanded(flex: 2, child: Container()),
            Expanded(flex: 3, child: LogoView()),
            Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GreenButton(
                        value: "Start",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpView()));
                        },
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

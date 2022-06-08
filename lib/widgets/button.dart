import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  String value;
  Function onPressed;
  GreenButton({Key? key, required this.value, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(value),
      style: ElevatedButton.styleFrom(primary: Colors.green),
    );
  }
}

import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  String value;
  GreenButton({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(value),
      style: ElevatedButton.styleFrom(primary: Colors.green),
    );
  }
}

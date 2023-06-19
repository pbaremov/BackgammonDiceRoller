import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World',
      style: TextStyle(color: Colors.white, fontSize: 33),
    );
  }
}

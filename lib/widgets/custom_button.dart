import 'package:flutter/flutter.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CustomButton({Key text,this.onPressed);}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

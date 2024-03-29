import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';
import '../utils/accessibility.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CustomButton({Key? text,this.onPressed);}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(radius: Radius.circular(10))),
        backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
      ),
      accessibilityFeatures: AccessibilityUtils.enableHighContrastMode(),
    );
  }
}

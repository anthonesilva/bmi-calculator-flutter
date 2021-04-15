import 'package:flutter/material.dart';
import 'constants.dart';

class ButtonCircleIcon extends StatelessWidget {
  ButtonCircleIcon({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 0.0,
      fillColor: kCircleButtonColor,
      constraints: BoxConstraints(minWidth: 100.0, minHeight: 50.0),
    );
  }
}

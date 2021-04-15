import 'package:flutter/material.dart';
import 'constants.dart';

class GenderIcon extends StatelessWidget {
  GenderIcon({@required this.label, @required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kGapBetweenIconLabel,
        ),
        Text(
          label,
          style: TextStyle(
            color: kTextColors,
            fontSize: kFontLabelSize,
          ),
        ),
      ],
    );
  }
}

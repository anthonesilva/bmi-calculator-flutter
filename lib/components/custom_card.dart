import 'package:flutter/material.dart';
import 'constants.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {@required this.customColor, this.customCard, this.onTapEventFunction});

  final Color customColor;
  final Widget customCard;
  final Function onTapEventFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapEventFunction,
      child: Container(
        child: customCard,
        margin: EdgeInsets.all(kCustomMarginAll),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(kBorderRadiusCircular),
        ),
      ),
    );
  }
}

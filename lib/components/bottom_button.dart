import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.text, this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: kFontLabelSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        height: kBottomButtonHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: kCustomMarginAll),
        decoration: BoxDecoration(
          color: kBottomButtonColor,
        ),
      ),
    );
  }
}

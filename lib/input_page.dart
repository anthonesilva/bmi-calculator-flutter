import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_card.dart';
import 'gender_icon.dart';
import 'constants.dart';
import 'button_circle_icon.dart';

enum GenderEnum {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum selectedGender;
  int height = 180;
  int weight = 60;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CustomCard(
                    onTapEventFunction: () {
                      setState(() {
                        selectedGender = GenderEnum.male;
                      });
                    },
                    customColor: selectedGender == GenderEnum.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    customCard: GenderIcon(
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CustomCard(
                    onTapEventFunction: () {
                      setState(() {
                        selectedGender = GenderEnum.female;
                      });
                    },
                    customColor: selectedGender == GenderEnum.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    customCard: GenderIcon(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CustomCard(
                    customColor: kActiveCardColor,
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: kGapBetweenIconLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kExtraLargeLabelTextStyle,
                            ),
                            Text(
                              ' cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: kInactiveSlideColor,
                            thumbColor: kActiveSlideColor,
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                              pressedElevation: 6.0,
                              elevation: 1.0,
                              disabledThumbRadius: 14.0,
                            ),
                            overlayColor: kActiveOverlaySlideColor,
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: kMinHeightSlider,
                              max: kMaxHeightSlider,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CustomCard(
                    customColor: kActiveCardColor,
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kExtraLargeLabelTextStyle,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ButtonCircleIcon(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                            ),
                            Expanded(
                              flex: 1,
                              child: ButtonCircleIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CustomCard(
                    customColor: kActiveCardColor,
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kExtraLargeLabelTextStyle,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ButtonCircleIcon(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                            ),
                            Expanded(
                              flex: 1,
                              child: ButtonCircleIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
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
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

//  Color maleCardColour = inactiveCardColour;
//  Color femaleCardColour = inactiveCardColour;

  Gender selectedGender;

//  //1 = male
//  void updateColour(Gender gender) {
//
//    if (gender == Gender.male) {
//      if(maleCardColour == inactiveCardColour) {
//        maleCardColour = activeCardColour;
//        femaleCardColour = inactiveCardColour;
//      } else {
//        maleCardColour = inactiveCardColour;
//        //femaleCardColour = activeCardColour;
//      }
//    }
//
//    if (gender == Gender.female) {
//      if(femaleCardColour == inactiveCardColour) {
//        femaleCardColour = activeCardColour;
//        maleCardColour = inactiveCardColour;
//      } else {
//        femaleCardColour = inactiveCardColour;
//        //maleCardColour = activeCardColour;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text('BMI CALCULATOR')),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: Gender.male == selectedGender ? activeCardColour : inactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: Gender.female == selectedGender ? activeCardColour : inactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
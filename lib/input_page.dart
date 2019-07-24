import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(colour: activeCardColour,),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColour,),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColour,),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColour,),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColour,),
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

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      //Paused at 5:50 in How to refactor flutter widgets
    );
  }
}




//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: <Widget> [
//Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//mainAxisSize: MainAxisSize.max,
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//Expanded(
//child: Container(
//child: Text("Box 1"),
//margin: EdgeInsets.all(15.0),
//decoration: BoxDecoration(
//color: Color(0xFF1D1E33),
//borderRadius: BorderRadius.circular(10.0),
//),
//),
//),
//Expanded(
//child: Container(
//child: Text("Box 2"),
//margin: EdgeInsets.all(15.0),
//decoration: BoxDecoration(
//color: Color(0xFF1D1E33),
//borderRadius: BorderRadius.circular(10.0),
//),
//),
//),
//],
//),
//Container(
//child: Text("Box A"),
//margin: EdgeInsets.all(15.0),
//decoration: BoxDecoration(
//color: Color(0xFF1D1E33),
//borderRadius: BorderRadius.circular(10.0),
//),
//),
//Row(
//children: <Widget>[
//Expanded(
//child: Container(
//child: Text("Box 1"),
//margin: EdgeInsets.all(15.0),
//decoration: BoxDecoration(
//color: Color(0xFF1D1E33),
//borderRadius: BorderRadius.circular(10.0),
//),
//),
//),
//Expanded(
//child: Container(
//child: Text("Box 2"),
//margin: EdgeInsets.all(15.0),
//decoration: BoxDecoration(
//color: Color(0xFF1D1E33),
//borderRadius: BorderRadius.circular(10.0),
//),
//),
//),
//],
//),
//],
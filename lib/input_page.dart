import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

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
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //Paused at 5:50 in How to refactor flutter widgets
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //Paused at 5:50 in How to refactor flutter widgets
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              //Paused at 5:50 in How to refactor flutter widgets
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //Paused at 5:50 in How to refactor flutter widgets
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //Paused at 5:50 in How to refactor flutter widgets
                  ),
                )
              ],
            ),
          ),
        ],
      ),
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
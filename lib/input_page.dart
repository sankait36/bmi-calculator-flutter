import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const inputPageCardColor = Color(0xFF1D1E33);
const textColor = Color(0xFF8D8E98);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: inputPageCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      textContent: 'MALE',
                      textColor: textColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: inputPageCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      textContent: 'FEMALE',
                      textColor: textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: inputPageCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: inputPageCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: inputPageCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String textContent;
  final Color textColor;

  IconContent({@required this.iconData, @required this.textContent, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: TextStyle(fontSize: 18.0, color: textColor),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

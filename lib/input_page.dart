import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

const bottomHeightContainer = 80.0;
const activeCardColor = Color(0xFF35375f);
const bottomColorContainer = Color(0xFFEB1555);

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
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child:ResuableCard(
                colour:activeCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              ),
              ),
              Expanded(child: ResuableCard(colour: activeCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
              ),
    ),

    ],
          )),
          Expanded(child: ResuableCard(colour: activeCardColor,
          ),
    ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ResuableCard(colour: activeCardColor,
              ),
    ),
              Expanded(child: ResuableCard(colour: activeCardColor,
              ),
              ),
            ],
          )
          ),
          Container(
            color: bottomColorContainer,
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            height: bottomHeightContainer,
          ),
        ],
      ),
    );
  }
}




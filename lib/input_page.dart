import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'resuable_card.dart';



enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender ;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child:ResuableCard(
                  onpress: (){
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                colour:selectedGender== Gender.male ? kActiveCardColor : kInactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              ),
              ),
              Expanded(child:
              ResuableCard(
                onpress: (){
                  selectedGender=Gender.female;
                },
                colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
              ),
    ),
            ],
          ),
          ),
          Expanded(child:
          ResuableCard(colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT',style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(height.toString(),style: kNumberTextStyle,
                    ),
                    Text('cm',style: kLabelTextStyle,)
                  ],
                ),
                Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E95),
                    onChanged: (double newValue){
                      setState(() {

                        height= newValue.round();
                      });

                    },
                ),

              ],
            ),
          ),
    ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                  colour: kActiveCardColor,
              ),

    ),
              Expanded(child: ResuableCard(colour: kActiveCardColor,
              ),
              ),
            ],
          )
          ),
          Container(
            color: kBottomColorContainer,
            margin: EdgeInsets.only(top:10),
            width: double.infinity,
            height: kBottomHeightContainer,
          ),
        ],
      ),
    );
  }
}




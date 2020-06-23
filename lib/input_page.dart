import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IconContent extends StatelessWidget {
  IconContent({this.icon,this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
        icon,
          size: 80.0,

        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8E98),
        ),)
      ],
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour, this.cardChild});
  final Color colour ;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardChild,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color:colour,
      borderRadius: BorderRadius.circular(10.0),
    ),
    );
  }
}

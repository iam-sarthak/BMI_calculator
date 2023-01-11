import 'package:flutter/material.dart';
import 'package:bmi_calulator/constants.dart';
import 'package:bmi_calulator/Components/reuseable_card.dart';
import 'package:bmi_calulator/Components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.interpretation,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              Colour: kActivecardcolor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: kResultTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(interpretation, style: kResultBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          BottomButton(BtnText: 'Re-Calculate', onTap: (){
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentIndicatorScreen extends StatefulWidget {
  const CircularPercentIndicatorScreen({super.key});

  @override
  State<CircularPercentIndicatorScreen> createState() => _CircularPercentIndicatorScreenState();
}

class _CircularPercentIndicatorScreenState extends State<CircularPercentIndicatorScreen> {

  double _radiusValue = 100;
  var animationDuration = 2000;
  String text = "80%";
  double percent = 0.8;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Percent Indicator"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircularPercentIndicator(
                radius: _radiusValue,
              lineWidth: 25,
              backgroundColor: Colors.grey.shade300,
              progressColor: Colors.teal,
              animation: true,
              animationDuration: animationDuration,
              percent: percent,
              center: Text((percent*100).toStringAsFixed(1)+" %",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.teal),),
            ),
            Text(_radiusValue.toString()),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      percent = (percent+ 0.10);

                    });


                  },
                    child: Text("Add 10")),
                SizedBox(width: 20,),
                InkWell(
                    onTap: (){
                      setState(() {

                        percent = (percent- 0.10);

                      });


                    },
                    child: Text("Minus 10")),




              ],
            ),

          ],
        ),
      ),
    );
  }
}

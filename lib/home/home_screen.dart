import 'package:flutter/material.dart';

import '../widgets/circular_percent_indicator.dart';
import '../widgets/dateTimePicker/dateTimePicker.dart';
import '../widgets/expansion_tile/expansion_tile.dart';
import '../widgets/hero_widget.dart';
import '../widgets/pageView/page_view_screen.dart';
import '../widgets/slider_widget.dart';
import '../widgets/tabbar/tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SliderScreen(),));
              },
                child: const Text("Number 1: Slider",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 10,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CircularPercentIndicatorScreen(),));
                },
                child: Text("Number 2: Circular Percent Indicator",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),

            const SizedBox(height: 10,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HeroWidgetScreen(),));
                },
                child: const Text("Number 3: Hero Widget",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),

            const SizedBox(height: 10,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpansionTileScreen(),));
                },
                child: const Text("Number 5: Expansion Tile",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),

            const SizedBox(height: 10,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DateTimePicker(),));
                },
                child: const Text("Number 6: Date Time Picker",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),

            const SizedBox(height: 10,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PageViewScreen(),));
                },
                child: const Text("Number 7: Page View Widget",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),




          ],
        ),
      ),
    );
  }
}

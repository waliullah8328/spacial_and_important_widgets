import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabbar"),),

      body: DefaultTabController(length: 3,
          child: Column(
            children: [
              TabBar(
                

                tabs: [
                Tab(icon: Icon(Icons.add_chart_outlined),),
                Tab(icon: Icon(Icons.notification_important,),child: Text("Notification"),),
                Tab(icon: Icon(Icons.notification_important,)),
                    ]
                ),
              Expanded(
                child: TabBarView(
                
                    children: [
                  Center(
                    child: Container(

                      child: Text("First "),),
                  ),
                  Center(
                    child: Container(
                      child: Text("Second "),),
                  ),
                  Center(child: Container(child: Text("Third"),)),
                
                ]),
              ),

            ],
          ),
      ),
    );
  }
}

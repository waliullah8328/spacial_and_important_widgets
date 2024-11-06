import 'package:flutter/material.dart';

class ExpansionTileScreen extends StatefulWidget {
  const ExpansionTileScreen({super.key});

  @override
  State<ExpansionTileScreen> createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile Screen"),
        centerTitle: true,
      ),
      body: ExpansionTile(
          title: Text("One"),
        subtitle: Text("Simple Flutter widget "),
       // leading: Icon(Icons.access_time_filled_outlined),
        children: [
          Container(
            height: 200,
            color: Colors.purple,
            child: Center(child: Text("A simple Flutter widget that implements a tabbed layout using TabBar and TabBarView.A simple Flutter widget that implements a tabbed layout using TabBar and TabBarView.A simple Flutter widget that implements a tabbed layout using TabBar and TabBarView.",style: TextStyle(color: Colors.white),)),
          )
        ],

      ),
    );
  }
}

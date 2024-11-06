import 'package:flutter/material.dart';

import '../model/product_model.dart';

class HeroDetailsPage extends StatefulWidget {
  final Product product;
  const HeroDetailsPage({super.key, required this.product});

  @override
  State<HeroDetailsPage> createState() => _HeroDetailsPageState();
}

class _HeroDetailsPageState extends State<HeroDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hero Details Page")),
      ),
      body: Column(
        children: [
          Hero(tag: "image-id-${widget.product.id}", child: Image.asset(widget.product.image.toString(),fit:BoxFit.cover,height: 300,width: 400,)),
          SizedBox(height: 15,),
          Text(widget.product.productName),

        ],
      ),
    );
  }
}

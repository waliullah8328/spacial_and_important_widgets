import 'package:flutter/material.dart';

import '../model/product_model.dart';
import 'herodetails.dart';

class HeroWidgetScreen extends StatefulWidget {
  const HeroWidgetScreen({super.key});

  @override
  State<HeroWidgetScreen> createState() => _HeroWidgetScreenState();
}

class _HeroWidgetScreenState extends State<HeroWidgetScreen> {


  List <Product> productList = [
    Product(
      id:1,
      productName: "Wali Ullah Ripon",
      price: 575,
      image: "assets/profile.png"

    ),
    Product(
        id:2,
        productName: "Wali Ullah Ripon",
        price: 575,
        image: "assets/profile.png"

    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Widget Screen"),),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HeroDetailsPage( product: productList[index],),));
          },
          leading: Hero(tag: "image-id-${productList[index].id}", child: Image.asset(productList[index].image.toString(),fit:BoxFit.fill)),
          title: Text(productList[index].productName.toString()),
        );
      },),
    );
  }
}

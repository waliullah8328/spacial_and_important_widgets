import 'package:flutter/material.dart';
import 'package:spacial_and_important_widgets/widgets/pageView/one.dart';
import 'package:spacial_and_important_widgets/widgets/pageView/three.dart';
import 'package:spacial_and_important_widgets/widgets/pageView/two.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {

  PageController controller = PageController();

  List<Widget> list=<Widget> [One(),Two(),Three()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PageView Screen"),),
      body: PageView(
        children: list,
        scrollDirection: Axis.horizontal,
        controller: controller,
      ),
    );
  }
}

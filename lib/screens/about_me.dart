import 'package:unit6_assignment_marcellana/components/tab_widget_1.dart';
import 'package:unit6_assignment_marcellana/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  List<Widget> tabWidgets = [TabWidget1(), TabWidget2()];

  List<Widget> tabs = [
    Tab(icon: Icon(Icons.gamepad, color: Color.fromRGBO(255, 0, 0, 1),), text: "Tab Widget 1"),
    Tab(icon: Icon(Icons.garage, color: Color.fromRGBO(255, 0, 0, 1),), text: "Tab Widget 2"),
  ];
  
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: tabWidgets.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text ("About Me"),
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: tabWidgets),
      ),
    );
  }
}
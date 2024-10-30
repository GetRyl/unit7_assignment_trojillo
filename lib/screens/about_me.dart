import '../components/tab_widget_1.dart';
import '../components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Tab 1"), // First tab
              Tab(text: "Tab 2"), // Second tab
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabWidget1(), // Content for first tab
            TabWidget2(), // Content for second tab
          ],
        ),
      ),
    );
  }
}
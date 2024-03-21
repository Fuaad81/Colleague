// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:events/teacher/previous.dart';
import 'package:events/teacher/upcoming.dart';
import 'package:flutter/material.dart';

class Tabbar1 extends StatefulWidget {
  const Tabbar1({super.key});

  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 15,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            dividerColor: Colors.white,
            indicatorColor: Colors.blue,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            tabs: [
              Text('Upcoming'),
              Text("Previus")],
          ),
        ),
        body: TabBarView(children: [Upcoming(), Previous()]),
      ),
    );
  }
}

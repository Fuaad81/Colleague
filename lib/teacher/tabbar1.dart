// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/teacher/previous.dart';
import 'package:events/teacher/upcoming.dart';
import 'package:flutter/material.dart';

class Tabbar2 extends StatefulWidget {
  const Tabbar2({super.key});

  @override
  State<Tabbar2> createState() => _Tabbar2State();
}

class _Tabbar2State extends State<Tabbar2> {
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
            indicatorColor: Color(0xffb4472B2),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xffb4472B2)
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

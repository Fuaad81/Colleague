// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, unnecessary_import, use_full_hex_values_for_flutter_colors, unused_local_variable

import 'package:events/teacher/studentlist.dart';
import 'package:events/teacher/tabbar1.dart';
import 'package:flutter/material.dart';

class Tabbar1 extends StatefulWidget {
  const Tabbar1({super.key});

  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: TabBarView(children: [Student_List(), Tabbar2()]),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Container(
                  height: height/12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color(0xffb4472B2))),
                  child: TabBar(
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      indicator: BoxDecoration(
                          color: Color(0xffb4472B2),
                          borderRadius: BorderRadius.circular(30)),
                      tabs: [
                        Text(
                          'Students',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Events',
                          style: TextStyle(fontSize: 20),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

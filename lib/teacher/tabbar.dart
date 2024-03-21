// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, unnecessary_import

import 'package:events/teacher/studentlist.dart';
import 'package:events/teacher/tabbar1.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: TabBarView(children: [Student_List(), Tabbar1()]),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blue)),
                  child: TabBar(
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      indicator: BoxDecoration(
                          color: Colors.blue,
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

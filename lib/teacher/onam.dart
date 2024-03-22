// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, use_full_hex_values_for_flutter_colors

import 'package:events/teacher/detail.dart';
import 'package:events/teacher/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onam extends StatefulWidget {
  const Onam({super.key});

  @override
  State<Onam> createState() => _OnamState();
}

class _OnamState extends State<Onam> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("Details",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffb4472B2)
                ),),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TabBar(
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffb4472B2)
                ),
                indicatorColor: Color(0xffb4472B2),
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                Text("Details"),
                Text("Photo")
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                Details(),
                Photo()
              ]),
            )
          ],),
        ),
      ),
    );
  }
}
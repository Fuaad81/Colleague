// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/student/onam_fest_det.dart';
import 'package:events/student/onam_fest_photo.dart';
import 'package:flutter/material.dart';

class Onam_Festival extends StatefulWidget {
  const Onam_Festival({super.key});

  @override
  State<Onam_Festival> createState() => _Onam_FestivalState();
}

class _Onam_FestivalState extends State<Onam_Festival> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.white,
                indicatorColor: Color(0xffb4466b2),
                indicatorWeight: 5,
                labelColor: Color(0xffb4466b2),
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                tabs: [
                Text("Details"),
                Text("Photo")
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                Onam_Fest_Detail(),
                Onam_Fest_Photo()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
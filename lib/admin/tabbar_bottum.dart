// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/admin/event.dart';
import 'package:events/admin/request.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottum_Tab extends StatefulWidget {
  const Bottum_Tab({super.key});

  @override
  State<Bottum_Tab> createState() => _Bottum_TabState();
}

class _Bottum_TabState extends State<Bottum_Tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(child: TabBarView(children: [Request(),Event()]))
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color(0xffb4466b2)
                    )
                  ),
                  child: TabBar(
                    indicatorColor: Color(0xffb4466b2),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Color(0xffb4466b2),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    indicatorPadding: EdgeInsets.all(8),
                    labelColor: Colors.white,
                    labelStyle: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Text("Request"),
                      Text("Event")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
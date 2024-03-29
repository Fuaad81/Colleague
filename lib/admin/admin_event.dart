// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_full_hex_values_for_flutter_colors

import 'package:events/admin/event_student.dart';
import 'package:events/admin/event_teacher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Event extends StatefulWidget {
  const Admin_Event({super.key});

  @override
  State<Admin_Event> createState() => _Admin_EventState();
}

class _Admin_EventState extends State<Admin_Event> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 210,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xffb4466b2).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    color: Color(0xffb4466b2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: GoogleFonts.poppins(
                              textStyle:TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              )
                            ),
                  tabs: [
                  Text("Student"),
                  Text("Teacher")
                ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Event_Student(),
                Event_Teacher()
              ]),
            )
          ],
        ),
      ));
  }
}
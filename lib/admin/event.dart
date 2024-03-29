// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/admin/admin_previous.dart';
import 'package:events/admin/admin_upcoming.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Event"),
          toolbarHeight: 80,
        ),
        body: Column(
          children: [
            TabBar(
                dividerColor: Colors.white,
                indicatorColor: Color(0xffb4466b2),
                labelStyle: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(color: Color(0xffb4466b2), fontSize: 17)),
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [Text("Upcoming"), Text("Previous")]),
            Expanded(
              child: TabBarView(
                children: [
                  Admin_Upcoming(),
                  Admin_Previous()
              ]),
            )
          ],
        ),
      ),
    );
  }
}

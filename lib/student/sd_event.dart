// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/student/bottom_tabbar.dart';
import 'package:events/student/event_notification.dart';
import 'package:events/student/event_profile_edit.dart';
import 'package:events/student/request.dart';
import 'package:flutter/material.dart';

class Sd_Event_tab extends StatefulWidget {
  const Sd_Event_tab({super.key});

  @override
  State<Sd_Event_tab> createState() => _Sd_Event_tabState();
}

class _Sd_Event_tabState extends State<Sd_Event_tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Event"),
          centerTitle: true,
          toolbarHeight: 90,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sd_profile(),
                      ));
                },
                icon: Icon(Icons.person_2_outlined,size: 35,)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Event_Notification(),
                      ));
                },
                icon: Icon(Icons.notifications_active_outlined,size: 30,))
          ],
        ),
        body: Column(
          children: [
            TabBar(
                isScrollable: true,
                dividerColor: Colors.white,
                labelStyle: TextStyle(
                    fontSize: 20,
                    color: Color(0xffb4466b2),
                    fontWeight: FontWeight.w500),
                indicatorColor: Color(0xffb4466b2),
                tabAlignment: TabAlignment.start,
                tabs: [Text("Event"), Text("Request")]),
            Expanded(
              child: TabBarView(children: [Bottom_Tabbar(), Requests()]),
            )
          ],
        ),
      ),
    );
  }
}

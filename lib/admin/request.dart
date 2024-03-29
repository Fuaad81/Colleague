// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:events/admin/admin_event.dart';
import 'package:events/admin/admin_notification.dart';
import 'package:events/admin/admin_teacher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Request"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Admin_Notification(),));
              },
              icon: Icon(CupertinoIcons.bell))
          ],
          toolbarHeight: 90,
        ),
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                dividerColor: Colors.white,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                Text("Teacher"),
                Text("Event")
              ]),
              Expanded(
                child: TabBarView(children: [
                  Admin_Teacher(),
                  Admin_Event()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
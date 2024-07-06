// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/admin/admin_add_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Notification extends StatefulWidget {
  const Admin_Notification({super.key});

  @override
  State<Admin_Notification> createState() => _Admin_NotificationState();
}

class _Admin_NotificationState extends State<Admin_Notification> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Stack(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width / 1.1,
                  height: height / 4.5,
                  decoration: BoxDecoration(
                      color: Color(0xffb4466b2).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Onam",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xffb4466b2), fontSize: 17)),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.delete,
                                  color: Colors.black,
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              '''
We are delighted to announce the upcoming
Onam Program,a celebration of joy, culture, and
togetherness! The college principal has approved
the event, and we can't wait to make it a
memorable occation for all. 
                      ''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 14),
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Add_Notification(),
                    ));
              },
              icon: Icon(
                CupertinoIcons.add_circled_solid,
                size: 70,
                color: Color(0xffb4466b2),
              )),
        )
      ]),
    );
  }
}

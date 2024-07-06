// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class Teacher_Notification extends StatefulWidget {
  const Teacher_Notification({super.key});

  @override
  State<Teacher_Notification> createState() => _Teacher_NotificationState();
}

class _Teacher_NotificationState extends State<Teacher_Notification> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width/1.1,
                height: height/5.2,
                decoration: BoxDecoration(
                  color: Color(0xffb4466b2).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 8),
                      child: Text("Onam",style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          overflow: TextOverflow.clip,
                          ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

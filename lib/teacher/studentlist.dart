// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/teacher/student_details.dart';
import 'package:events/teacher/teacher_notification.dart';
import 'package:events/teacher/teacher_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Student_List extends StatefulWidget {
  const Student_List({super.key});

  @override
  State<Student_List> createState() => _Student_ListState();
}

class _Student_ListState extends State<Student_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Student List',
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Teacher_Profile(),
                            ));
                      },
                      icon: Icon(
                        Icons.person_3_outlined,
                        size: 30,
                      )),
                ),
                IconButton(
                    onPressed: () {                      
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Teacher_Notification(),
                            ));
                    },
                    icon: Icon(Icons.notifications_active_outlined, size: 30))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Student_details(),
                          ));
                    },
                    child: Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffb4466b2).withOpacity(0.1)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("images/avatar.jpg"),
                          radius: 25,
                        ),
                        title: Text('Student Name'),
                        subtitle: Text('Department'),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}

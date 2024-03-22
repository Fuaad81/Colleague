// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:events/teacher/student_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_3_outlined,
                        size: 30,
                      )),
                ),
                IconButton(
                    onPressed: () {},
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
                          color: Colors.blue[100]),
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

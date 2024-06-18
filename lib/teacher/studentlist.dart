// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:events/teacher/teacher_notification.dart';
import 'package:events/teacher/teacher_profile.dart';
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
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('student_rg')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Text("No data!",),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text("Error ${snapshot.error}");
                }
                final user = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    var det = snapshot.data!.docs[index];
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.blue.withOpacity(0.1),
                        leading: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          det['name'],
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 3,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          det['department'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      )),
    );
  }
}

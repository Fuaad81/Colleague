// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, non_constant_identifier_names

import 'package:events/teacher/studentlist.dart';
import 'package:events/teacher/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherReg extends StatefulWidget {
  const TeacherReg({super.key});

  @override
  State<TeacherReg> createState() => _TeacherRegState();
}

class _TeacherRegState extends State<TeacherReg> {
  final Valid = GlobalKey<FormState>();
  var name = TextEditingController();
  var department = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
      ),
      body: SafeArea(
          child: Form(
        key: Valid,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40),
              child: Row(
                children: [
                  Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40),
              child: Row(
                children: [
                  Text(
                    "Department",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40),
              child: Row(
                children: [
                  Text(
                    "Phone No",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40),
              child: Row(
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 40),
              child: Row(
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tabbar(),
                          ));
                    },
                    child: Container(
                      width: 380,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(
                          child: Text("Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

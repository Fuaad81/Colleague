// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, non_constant_identifier_names, use_full_hex_values_for_flutter_colors, empty_catches, use_build_context_synchronously, avoid_print, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:events/teacher/studentlist.dart';
import 'package:events/teacher/tabbar.dart';
import 'package:events/teacher/teacher_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

  Future<void> Checking() async {
    if (Valid.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.text, password: pass.text);
        String teacheruid = userCredential.user!.uid;
        await FirebaseFirestore.instance
            .collection("teacher_rg")
            .doc(teacheruid)
            .set({
          'name': name.text,
          'department': department.text,
          'phone': phone.text,
          'email': email.text,
          'pass': pass.text,
          "teacherid": teacheruid
        });
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Teacher_login(),
            ));
      } catch (e) {
        print('Unexpected error during registration: $e');
        Fluttertoast.showToast(
          msg: "Unexpected error during registration.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
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
        child: SingleChildScrollView(
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
                    width: width /1.2,
                    height: height / 16,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
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
                    width: width /1.2,
                    height: height / 16,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your department';
                        }
                        return null;
                      },
                      controller: department,
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
                    width: width /1.2,
                    height: height / 16,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone no';
                        }
                        return null;
                      },
                      controller: phone,
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
                    width: width /1.2,
                    height: height / 16,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      controller: email,
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
                    width: width /1.2,
                    height: height / 16,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      controller: pass,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Checking(),
                      child: Container(
                        width: width/1.2,
                        height: height / 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffb4472B2)),
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
        ),
      )),
    );
  }
}

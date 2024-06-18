// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, empty_catches, unnecessary_null_in_if_null_operators, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:events/teacher/reacher_addprof.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Teacher_Profile extends StatefulWidget {
  const Teacher_Profile({super.key});

  @override
  State<Teacher_Profile> createState() => _Teacher_ProfileState();
}

class _Teacher_ProfileState extends State<Teacher_Profile> {
  var name = TextEditingController();
  var department = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  String? imageurl;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    getTeacherDetails();
  }

  Future<void> getTeacherDetails() async {
    try {
      SharedPreferences teacher = await SharedPreferences.getInstance();
      String? tid = teacher.getString("teacherId");
      print("$tid");

      if (tid!.isNotEmpty) {
        Stream<DocumentSnapshot> teacherstreem = FirebaseFirestore.instance
            .collection("teacher_reg")
            .doc(tid)
            .snapshots();

        teacherstreem.listen((teachersnapshot) {
          if (teachersnapshot.exists) {
            setState(() {
              name.text = teachersnapshot["name"] ?? '';
              department.text = teachersnapshot["department"] ?? '';
              phone.text = teachersnapshot["phone"] ?? '';
              email.text = teachersnapshot["email"] ?? '';
              imageurl = teachersnapshot["image_url"] ?? '';
            });
          }
        });
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => teacher_add_Prof(),));
            }, icon: Icon(Icons.mode_edit_outlined,size: 30)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: imageurl != null && imageurl!.isNotEmpty ? NetworkImage(imageurl!) : null,
                      child: imageurl == null || imageurl!.isEmpty ? Image.asset("images/avatar.jpg"):null,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width/1.2,
                    height: height/16,
                    child: TextFormField(
                      controller: name,
                      readOnly: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Department",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width/1.2,
                    height: height/16,
                    child: TextFormField(
                      controller: department,
                      readOnly: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Phone no",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width/1.2,
                    height: height/16,
                    child: TextFormField(
                      controller: phone,
                      readOnly: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width/1.2,
                    height: height/16,
                    child: TextFormField(
                      controller: email,
                      readOnly: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

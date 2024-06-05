// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, unused_element, empty_catches, avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class teacher_add_Prof extends StatefulWidget {
  const teacher_add_Prof({super.key});

  @override
  State<teacher_add_Prof> createState() => _teacher_add_ProfState();
}

class _teacher_add_ProfState extends State<teacher_add_Prof> {
  File? image;
  var image_url;

  final valid = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController department = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();

  Future<void> _pickImage() async {
    ImagePicker picked = ImagePicker();
    final pick = await picked.pickImage(source: ImageSource.gallery);
    setState(() {
      image = File(pick!.path);
    });
  }

  Future<void> getTeacherDetails() async {
    try {
      SharedPreferences teacher = await SharedPreferences.getInstance();
      String? tid = teacher.getString("teacherId");
      print("$tid");

      if (tid!.isNotEmpty) {
        Stream<DocumentSnapshot> teacherstreem = FirebaseFirestore.instance
            .collection("teacher_rg")
            .doc(tid)
            .snapshots();

        teacherstreem.listen((teachersnapshot) {
          if (teachersnapshot.exists) {
            setState(() {
              name.text = teachersnapshot["name"] ?? '';
              department.text = teachersnapshot["department"] ?? '';
              phone.text = teachersnapshot["phone"] ?? '';
              email.text = teachersnapshot["email"] ?? '';
            });
          }
        });
      }
    } catch (e) {}
  }

  Future<void> updateteacherdata() async {
    if (name.text.isNotEmpty &&
        department.text.isNotEmpty &&
        phone.text.isNotEmpty &&
        email.text.isNotEmpty) {
          try {
            SharedPreferences spref = await SharedPreferences.getInstance();
            String? teid = spref.getString("teacherId");
            print("Shared prf id $teid");

            if (teid!.isNotEmpty) {
              await FirebaseFirestore.instance.collection("teacher_rg").doc(teid).update({
                'name' : name.text,
                'department' : department.text,
                'phone' : phone.text,
                'email' : email.text,
                'image_url': image_url ?? '',
              });
              Fluttertoast.showToast(msg: "Profile updated");
              Navigator.pop(context);
            }
          } catch (e) {
             print("Error updating teacher data : $e");
          }
        }
  }

  Future<void> _uploadData() async {
    if (image != null) {
      try {

        await FirebaseFirestore.instance.collection("teacher_rg").add({
          'image_url': image_url ?? '',
        });

        final ref = firebase_storage.FirebaseStorage.instance
            .ref()
            .child("teacher_prof")
            .child(DateTime.now().millisecondsSinceEpoch.toString());
        await ref.putFile(image!);

        image_url = await ref.getDownloadURL();
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getTeacherDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: valid,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _pickImage();
                      },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            image != null ? FileImage(image!) : null,
                        child: image == null
                            ? Image.asset("images/avatar.jpg")
                            : null,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 30),
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
                    width: 360,
                    height: 50,
                    child: TextFormField(
                      controller: name,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
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
                    width: 360,
                    height: 50,
                    child: TextFormField(
                      controller: department,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
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
                    width: 360,
                    height: 50,
                    child: TextFormField(
                      controller: phone,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
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
                    width: 360,
                    height: 50,
                    child: TextFormField(
                      controller: email,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _uploadData();
                        updateteacherdata();
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffb4472B2)),
                        child: Center(
                            child: Text("SAVE",
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
      ),
    );
  }
}

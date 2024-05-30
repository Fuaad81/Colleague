// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class teacher_add_Prof extends StatefulWidget {
  const teacher_add_Prof({super.key});

  @override
  State<teacher_add_Prof> createState() => _teacher_add_ProfState();
}

class _teacher_add_ProfState extends State<teacher_add_Prof> {
  XFile? pick;
  File? image;

  Future<void> _pickImage() async {
    ImagePicker picked = ImagePicker();
    pick = await picked.pickImage(source: ImageSource.gallery);
    setState(() {
      image = File(pick!.path);
    });
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
      body: Column(
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
                    // child: ClipRRect(
                      
                    //   borderRadius: BorderRadius.circular(150),
                    //   child: image == null
                    //       ? Image.asset(
                    //           "images/avatar.jpg",
                    //           width: 100,
                    //         )
                    //       : Image.file(
                    //           image!,
                    //           width: 130,
                    //           height: 130,
                    //         ),
                    // )
                    child: CircleAvatar(
                    radius: 50,
                      
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                  decoration:
                      InputDecoration(enabledBorder: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
    );
  }
}

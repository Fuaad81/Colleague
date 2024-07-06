// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'dart:io';

import 'package:events/student/onam_fest_photo.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add_Image extends StatefulWidget {
  const Add_Image({super.key});

  @override
  State<Add_Image> createState() => _Add_ImageState();
}

class _Add_ImageState extends State<Add_Image> {
  XFile? pick;
  File? image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Photo"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Photo",
                      style: TextStyle(fontSize: 19),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width/1.1,
                    height: height/2.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffb4466b2),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: IconButton(
                          onPressed: () async {
                            ImagePicker picked = ImagePicker();
                            pick = await picked.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              image = File(pick!.path);
                            });
                          },
                          icon: image == null
                              ? Image.asset(
                                  "images/add-image.png",
                                  color: Color(0xffb4466b2).withOpacity(0.4),
                                  width: width/2,
                                )
                              : Image.file(
                                  image!,
                                  fit: BoxFit.cover,
                                )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(fontSize: 19),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: width/1.1,
                      height: height/15,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffb4466b2)))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Onam_Fest_Photo(),));
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/16,
                    decoration: BoxDecoration(
                        color: Color(0xffb4466b2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Send",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

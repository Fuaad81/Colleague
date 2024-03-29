// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/student/addimg.dart';
import 'package:flutter/material.dart';


class Onam_Fest_Photo extends StatefulWidget {
  const Onam_Fest_Photo({super.key});

  @override
  State<Onam_Fest_Photo> createState() => _Onam_Fest_PhotoState();
}

class _Onam_Fest_PhotoState extends State<Onam_Fest_Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GridView.count(
            crossAxisCount:2,
            children: [],
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Add_Image(),));
                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xffb4466b2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.add,size: 40,color: Colors.white,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
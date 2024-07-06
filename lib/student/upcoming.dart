// ignore_for_file: prefer_const_constructors, camel_case_types, use_full_hex_values_for_flutter_colors

import 'package:events/student/food_details.dart';
import 'package:flutter/material.dart';

class Sd_Upcoming extends StatefulWidget {
  const Sd_Upcoming({super.key});

  @override
  State<Sd_Upcoming> createState() => _Sd_UpcomingState();
}

class _Sd_UpcomingState extends State<Sd_Upcoming> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Food_Details(),));
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/11,
                    decoration: BoxDecoration(
                        color: Color(0xffb4472B2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 25, left: 50),
                      child: Text(
                        'Food Festival',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/11,
                  decoration: BoxDecoration(
                      color: Color(0xffb4472B2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 25, left: 50),
                    child: Text(
                      'Chrismas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width/1.1,
                  height: height/11,
                  decoration: BoxDecoration(
                      color: Color(0xffb4472B2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 25, left: 50),
                    child: Text(
                      'Music Festival',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}
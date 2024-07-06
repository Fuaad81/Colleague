// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/admin/event_student_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Event_Student extends StatefulWidget {
  const Event_Student({super.key});

  @override
  State<Event_Student> createState() => _Event_StudentState();
}

class _Event_StudentState extends State<Event_Student> {
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
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Event_Student_Details(),));
                  },
                  child: Container(
                    width: width/1.1,
                    height: height/16,
                    decoration: BoxDecoration(
                      color: Color(0xffb4466b2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/avatar.jpg"),
                      ),
                      title: Text("Adhil requested Food Festival",style: GoogleFonts.poppins(
                                textStyle:TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                )
                              ),),
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
                  height: height/16,
                  decoration: BoxDecoration(
                    color: Color(0xffb4466b2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    title: Text("Rajan requested Charismas",style: GoogleFonts.poppins(
                              textStyle:TextStyle(
                                color: Colors.white,
                                fontSize: 15
                              )
                            ),),
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
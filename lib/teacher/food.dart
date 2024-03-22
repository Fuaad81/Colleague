// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class Food_festival extends StatefulWidget {
  const Food_festival({super.key});

  @override
  State<Food_festival> createState() => _Food_festivalState();
}

class _Food_festivalState extends State<Food_festival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        toolbarHeight: 90,
        centerTitle: true,
      ),
      body: Column(  
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 380,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8),
                      child: Text("Onam Festival",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffb4472B2),
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Date",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(": 03/01/2025",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Time",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Text(": 3:00 PM",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Location",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(": College Group",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20),
            child: Row(
              children: [
                Text("Participants",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
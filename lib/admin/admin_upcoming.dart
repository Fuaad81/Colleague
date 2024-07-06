// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:events/admin/admin_add_event.dart';
import 'package:events/admin/admin_food_festival.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Upcoming extends StatefulWidget {
  const Admin_Upcoming({super.key});

  @override
  State<Admin_Upcoming> createState() => _Admin_UpcomingState();
}

class _Admin_UpcomingState extends State<Admin_Upcoming> {
  List name = ["Food Festival", "Charismas", "Music Festival"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Admin_Food_Festival(),
                              ));
                        },
                        child: ListTile(
                          tileColor: Color(0xffb4466b2),
                          title: Text(
                            name[index],
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ),
                          trailing: Icon(
                            CupertinoIcons.delete_solid,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Admin_Add_Event(),
                      ));
                },
                icon: Icon(
                  CupertinoIcons.add_circled_solid,
                  size: 70,
                  color: Color(0xffb4466b2),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

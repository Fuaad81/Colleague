// ignore_for_file: camel_case_types, prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_Teacher extends StatefulWidget {
  const Admin_Teacher({super.key});

  @override
  State<Admin_Teacher> createState() => _Admin_TeacherState();
}

class _Admin_TeacherState extends State<Admin_Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffb4466b2).withOpacity(0.3),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/avatar.jpg"),
                ),
                title: Text("Teacher name"),
                subtitle: Text("Department"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.clear_circled,
                          color: Colors.red
                          ,size: 30
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.check_mark_circled,
                          color: Colors.green,size: 30,
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

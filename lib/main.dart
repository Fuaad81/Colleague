// ignore_for_file: unused_import, prefer_const_constructors

import 'package:events/splash.dart';
import 'package:events/student/student_reg.dart';
import 'package:events/teacher/studentlist.dart';
import 'package:events/teacher/teacher_reg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}


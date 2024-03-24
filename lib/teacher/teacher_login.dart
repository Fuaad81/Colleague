// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:events/teacher/teacher_reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Teacher_login extends StatefulWidget {
  const Teacher_login({super.key});

  @override
  State<Teacher_login> createState() => _Teacher_loginState();
}

class _Teacher_loginState extends State<Teacher_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomPaint(
            size: Size(380,
                380), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text("Sign in",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text("Sign into your account",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(hintText: "Email Address"),
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
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(hintText: "Password"),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 68, 102, 178),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => TeacherReg(),));
                        },
                        child: Text("Sign up", style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 68, 102, 178),
                  fontWeight: FontWeight.w400
                ),
                        )))
                  ],
                )
          ],
        ),
      ),
              ],
            ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(150, 68, 102, 178)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width, 0);
    path_1.quadraticBezierTo(size.width, size.height * 0.6250000, size.width,
        size.height * 0.6500000);
    path_1.quadraticBezierTo(size.width * 0.3150000, size.height * 0.6250000,
        size.width * 0.2525000, 0);
    path_1.lineTo(size.width, 0);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke;
    // ..strokeWidth = size.width*0.01
    // ..strokeCap = StrokeCap.butt
    // ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

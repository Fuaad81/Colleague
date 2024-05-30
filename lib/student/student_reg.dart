// ignore_for_file: camel_case_types, prefer_const_constructors, use_full_hex_values_for_flutter_colors, avoid_print, non_constant_identifier_names, unused_local_variable, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:events/student/sd_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Student_Reg extends StatefulWidget {
  const Student_Reg({super.key});

  @override
  State<Student_Reg> createState() => _Student_RegState();
}

class _Student_RegState extends State<Student_Reg> {
  final valid = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController department = TextEditingController();
  TextEditingController reg_no = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass= TextEditingController();

    Future<void> Checking() async {
    if (valid.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.text, password: pass.text);
        String uid = userCredential.user!.uid;
        await FirebaseFirestore.instance.collection("student_rg").add({
          'name': name.text,
          'department': department.text,
          'reg_no' : reg_no.text,
          'phone': phone.text,
          'email': email.text,
          'pass': pass.text,
        });
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => St_login(),));
      }catch(e){
        print('Unexpected error during registration: $e');
        Fluttertoast.showToast(
          msg: "Unexpected error during registration.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
      ),
      body: SafeArea(
          child: Form(
        key: valid,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Row(
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: Row(
                  children: [
                    Text(
                      "Department",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: department,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: Row(
                  children: [
                    Text(
                      "Reg no",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: reg_no,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: Row(
                  children: [
                    Text(
                      "Phone No",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: phone,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: pass,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        print("Login Success");
                        Checking();
                      },
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(350, 50)),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        textStyle: MaterialStatePropertyAll(GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        ))
                      ),
                       child: Text("Button"))
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

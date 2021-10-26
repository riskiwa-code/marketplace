import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/screen/daftarScreen.dart';
import 'dart:developer';

import 'package:marketplace/utils/user_preferences.dart';

import 'mainScreen.dart';

class masukScreen extends StatefulWidget {
  //const masukScreen({ Key? key }) : super(key: key);

  @override
  _masukScreenState createState() => _masukScreenState();
}

class _masukScreenState extends State<masukScreen> {
  final _formKey = GlobalKey<FormState>();

  final UsernameController = TextEditingController();
  final PasswordController = TextEditingController();
  String? username, password;

  @override
  void initState() {
    super.initState();

    UserPreferences.init();
  }

  String? TextKosong(value) {
    if (value == null || value.isEmpty) {
      return 'Field Tidak Boleh Kosong';
    }
    return null;
  }

  void toHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Masuk",
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("User ID"),
                TextFormField(
                  validator: (value) => TextKosong(value),
                  controller: UsernameController,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Password"),
                TextFormField(
                  validator: (value) => TextKosong(value),
                  controller: PasswordController,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Belum memiliki akun? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Daftar Disini",
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => daftarScreen()),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(99.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        username = UsernameController.text;
                        password = PasswordController.text;
                        if (_formKey.currentState!.validate()) {
                          if (username == "pribadi" && password == "pribadi") {
                            UserPreferences.setIsLogin(true);
                            UserPreferences.setUserRole("pribadi");
                            log("pribadi");
                            toHomeScreen();
                          } else if (username == "vendor" &&
                              password == "vendor") {
                            UserPreferences.setIsLogin(true);
                            UserPreferences.setUserRole("vendor");
                            log("vendor");
                            toHomeScreen();
                          } else {
                            log("salah");
                          }
                        }
                      },
                      child: Text("Masuk"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

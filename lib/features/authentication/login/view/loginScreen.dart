import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haglex/features/authentication/registration/view/signUp.dart';
import 'package:haglex/features/values/colors.dart';

class LoginSceen extends StatefulWidget {
  @override
  _LoginSceenState createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0.0,
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  style: TextStyle(color: secondaryColor),
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: secondaryColor),
                      ),
                      hintText: 'email',
                      hintStyle: TextStyle(color: secondaryColor, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: secondaryColor)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: secondaryColor))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(color: secondaryColor),
                  maxLength: 8,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                    ),
                    hintText: 'password [Min of 8 chaacters]',
                    hintStyle: TextStyle(color: secondaryColor, fontSize: 12),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: secondaryColor)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: secondaryColor)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('.'),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: secondaryColor, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: Get.width / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: btnColor),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SignUpScreen());
                  },
                  child: Center(
                    child: Text(
                      'New user? Create an account',
                      style: TextStyle(color: secondaryColor, fontSize: 12),
                    ),
                  ),
                )
              ]),
        )));
  }
}

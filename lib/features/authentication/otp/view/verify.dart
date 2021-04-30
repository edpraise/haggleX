import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haglex/features/authentication/confirmation/view/otpConfirm.dart';
import 'package:haglex/features/values/colors.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff604D93)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: secondaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Verify your Account',
                style: TextStyle(
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                width: Get.width,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 80,
                          child: Icon(
                            Icons.check,
                            color: primaryColor,
                            size: 80,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'We just sent a verification code to your email, ',
                          style: TextStyle(),
                        ),
                      ),
                      Center(
                        child: Text(
                          'please enter the code',
                          style: TextStyle(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // keyboardType: ,
                        style: TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Verification Code',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 12),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(ConfirmationScreen());
                        },
                        child: Center(
                          child: Container(
                            height: 50,
                            width: Get.width / 1.5,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Text(
                                'Verify Me',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(child: Text('This code will expire in 10 mins')),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        'Resend Code',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0, right: 120),
                        child: Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

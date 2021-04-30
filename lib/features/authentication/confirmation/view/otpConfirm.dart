import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haglex/features/Dashboard/view/dashBoardScreen.dart';
import 'package:haglex/features/values/colors.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: ,
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                height: 80,
                width: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: btnColor),
                child: Icon(
                  Icons.check,
                  color: primaryColor,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Settup complete',
                style: TextStyle(
                    color: secondaryColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Thank you for setting up your HaggleX account',
                style: TextStyle(
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(DashBoardScreen());  
                },
                child: Container(
                  height: 50,
                  width: Get.width / 1.3,
                  decoration: BoxDecoration(
                    color: btnColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('START EXPLORING')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

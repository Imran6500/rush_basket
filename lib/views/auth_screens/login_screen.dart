// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:rushbaskets/core/colors.dart';

import '../../core/images.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImages.loginImage),
                Text("Login",
                    style: customTextStyle(25, FontWeight.w800, blackColor)),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 41,
                  ),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Number',
                      hintStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffb3b1b1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFFEF8120)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                VerticleSpacing(height: 30),
                PrimaryBtnWidget(
                  name: "Next",
                  height: 50,
                  width: double.infinity,
                  btnTextSize: 20,
                  color: primaryColor,
                  onTap: () => Get.toNamed("/verificationScreen"),
                ),
                VerticleSpacing(height: 20),
                const Text(
                  "or login with",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                VerticleSpacing(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: blackColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetsImages.googleImage),
                      HorizontalSpacing(width: 10),
                      Text(
                        "Sign in with Google",
                        style: customTextStyle(13, FontWeight.w400, blackColor),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

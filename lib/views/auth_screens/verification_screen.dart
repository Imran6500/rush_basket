import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:rushbaskets/core/colors.dart';
import 'package:rushbaskets/core/images.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

import '../home_screen/home_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  VerificationScreenState createState() => VerificationScreenState();
}

class VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImages.verificationImage),
                Text(
                  "Phone Verification",
                  style: customTextStyle(25, FontWeight.w700, blackColor),
                ),
                VerticleSpacing(height: 10),
                Text("Enter your OTP code",
                    style: customTextStyle(15, FontWeight.w400, hintTextColor)),
                VerticleSpacing(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      fieldWidth: 45,
                      spaceBetween: 5,
                      style: const TextStyle(fontSize: 17),
                      textFieldAlignment: MainAxisAlignment.center,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (pin) {
                        // print("Completed: $pin");
                      },
                    ),
                  ],
                ),
                VerticleSpacing(height: 20),
                Text(
                  "Didn’t receive Code?",
                  style: customTextStyle(12, FontWeight.w400, blackColor),
                ),
                VerticleSpacing(height: 5),
                Text("Resand again",
                    style: customTextStyle(12, FontWeight.w400, blueColor)),
                VerticleSpacing(height: 60),
                PrimaryBtnWidget(
                    name: "Verify",
                    height: 50,
                    color: primaryColor,
                    width: double.infinity,
                    btnTextSize: 20,
                    onTap: () => Get.toNamed("/bottomNavBar"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

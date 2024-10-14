import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rushbaskets/core/colors.dart';
import 'package:rushbaskets/core/images.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          "Profile",
          style: customTextStyle(20, FontWeight.w400, blackColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        AssetsImages.userImage,
                      )),
                ],
              ),
              VerticleSpacing(height: 40),
              Container(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        hintText: "Full Name",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticleSpacing(height: 20),
              const SizedBox(
                height: 65,
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Number',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffb3b1b1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xFFEF8120)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
              ),
              VerticleSpacing(height: 10),
              Container(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        hintText: "Email",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticleSpacing(height: 20),
              Container(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        hintText: "Street",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticleSpacing(height: 20),
              Container(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        hintText: "City",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticleSpacing(height: 20),
              Container(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primaryColor)),
                        hintText: "District",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticleSpacing(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: PrimaryBtnWidget(
                        name: "CANCEL",
                        width: MediaQuery.of(context).size.width,
                        height: 44,
                        btnTextSize: 15,
                        color: secondaryColor,
                        onTap: () {}),
                  ),
                  HorizontalSpacing(width: 20),
                  Expanded(
                    child: PrimaryBtnWidget(
                        name: "SAVE",
                        width: MediaQuery.of(context).size.width,
                        height: 44,
                        btnTextSize: 15,
                        color: primaryColor,
                        onTap: () {}),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

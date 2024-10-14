import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rushbaskets/core/colors.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    // bool isComming = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Help",
          style: customTextStyle(22, FontWeight.w700, whiteColor),
        ),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: whiteColor,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticleSpacing(height: 20),
            Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                  child: Text(
                    "today",
                    style: customTextStyle(18, FontWeight.w500, whiteColor),
                  )),
            ),
            Container(
                margin: const EdgeInsets.only(top: 15),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.3),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secondaryDrawerColor,
                  border: Border.all(
                    color: blackColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Hi,\nWelcome to Rush Basket",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),

            //eruhberih
            Container(
                margin: const EdgeInsets.only(top: 15),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.3),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secondaryDrawerColor,
                  border: Border.all(
                    color: blackColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "How may I help you today",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),

            //incomming
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 1.3),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: primaryshadedColor,
                      border: Border.all(
                        color: blackColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "nothing..",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
              ],
            ),

            Container(
                margin: const EdgeInsets.only(top: 15),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.3),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secondaryDrawerColor,
                  border: Border.all(
                    color: blackColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Thanks for your responses",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ],
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

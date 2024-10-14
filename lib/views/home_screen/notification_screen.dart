import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rushbaskets/core/colors.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            "Notification",
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 70,
                  decoration: BoxDecoration(
                    color: secondaryDrawerColor,
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border: Border.all(color: hintTextColor),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.notifications,
                            color: primaryColor,
                          ),
                        ),
                        HorizontalSpacing(width: 10),
                        Text(
                          "on the way..",
                          style:
                              customTextStyle(18, FontWeight.w400, blackColor),
                        ),
                        Spacer(),
                        const Text("04m ago")
                      ],
                    ),
                  ),
                ),
              );
            }));
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

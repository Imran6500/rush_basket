import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rushbaskets/core/images.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

import '../../core/colors.dart';

class CollectedCouponsScreen extends StatelessWidget {
  const CollectedCouponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            "Coupons",
            style: customTextStyle(
                22, FontWeight.w700, whiteColor, TextDecoration.none),
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
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: index % 2 == 0 ? primaryColor : secondaryColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // HorizontalSpacing(width: 30),
                      Expanded(
                        child: Image.asset(
                          AssetsImages.sampuImage,
                          height: 100,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "JBL Headphone",
                            style: customTextStyle(20, FontWeight.w700,
                                blackColor, TextDecoration.none),
                          ),
                          Row(
                            children: [
                              Text(
                                "₹999",
                                style: customTextStyle(18, FontWeight.w700,
                                    blackColor, TextDecoration.none),
                              ),
                              HorizontalSpacing(width: 10),
                              Text(
                                "₹4,999",
                                style: customTextStyle(15, FontWeight.w700,
                                    hintTextColor, TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          Text(
                            "Expire in 05 days",
                            style: customTextStyle(12, FontWeight.w400,
                                blueColor, TextDecoration.none),
                          ),
                          VerticleSpacing(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: blackColor),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("copy coupan code"),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }

  TextStyle customTextStyle(
      double size, FontWeight weight, Color color, TextDecoration decoration) {
    return TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: color,
        decoration: decoration);
  }
}

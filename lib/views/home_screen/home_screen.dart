import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rushbaskets/core/colors.dart';
import 'package:rushbaskets/core/images.dart';
import 'package:rushbaskets/views/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      AssetsImages.vegetableImage,
      AssetsImages.vegetableImage,
      AssetsImages.vegetableImage,
      AssetsImages.vegetableImage,
    ];

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: secondaryColor,
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //   Icons.menu,
          //   color: whiteColor,
          // )),
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            // const CircleAvatar(
            //   backgroundImage: AssetImage(AssetsImages.userImage),
            // ),
            HorizontalSpacing(width: 10),
            Text.rich(
              TextSpan(
                  text: "Rush",
                  style: customTextStyle(24, FontWeight.w700, whiteColor),
                  children: [
                    TextSpan(
                      text: "Baskets",
                      style: customTextStyle(24, FontWeight.w700, primaryColor),
                    ),
                  ]),
            )
          ]),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_sharp,
                  color: primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: primaryColor,
                ))
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: primaryDrawerColor,
                margin: EdgeInsets.zero,
                child: DrawerHeader(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          child: Image.asset(
                            AssetsImages.appIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "Best Offer, Best Deal",
                            style: customTextStyle(
                                12, FontWeight.w700, blackColor),
                          ),
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Container(
                  color: secondaryDrawerColor,
                  child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      children: [
                        ListTile(
                          title: Text(
                            "My account",
                            style: customTextStyle(
                                25, FontWeight.w700, blackColor),
                          ),
                          subtitle: Text(
                            "88xxxxxx30",
                            style: customTextStyle(
                                16, FontWeight.w400, blackColor),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                          onTap: () {
                            Get.toNamed("/profileScreen");
                          },
                        ),
                        Container(
                          // padding: const EdgeInsets.symmetric(vertical: 5),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border: Border.all(
                                color: blackColor,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: () => Get.toNamed("/helpScreen"),
                                    child: Image.asset(AssetsImages.helpImage)),
                                InkWell(
                                    // onTap: () => Get.toNamed("/paymentScreen"),
                                    child:
                                        Image.asset(AssetsImages.paymentImage)),
                                InkWell(
                                    // onTap: () => Get.toNamed("/deliver"),
                                    child:
                                        Image.asset(AssetsImages.deliverImage)),
                              ],
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: hintTextColor),
                            ),
                            child: const Icon(
                              Icons.shopping_cart,
                              color: primaryColor,
                            ),
                          ),
                          title: Text(
                            "Your Orders",
                            style: customTextStyle(
                                16, FontWeight.w400, blackColor),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: hintTextColor),
                            ),
                            child: const Icon(
                              Icons.local_offer,
                              color: primaryColor,
                            ),
                          ),
                          title: Text(
                            "Collected Coupons",
                            style: customTextStyle(
                                16, FontWeight.w400, blackColor),
                          ),
                          onTap: () {
                            Get.toNamed("/couponsScreen");
                          },
                        ),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: hintTextColor),
                            ),
                            child: const Icon(
                              Icons.share,
                              color: primaryColor,
                            ),
                          ),
                          title: Text(
                            "Share the app",
                            style: customTextStyle(
                                16, FontWeight.w400, blackColor),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: hintTextColor),
                            ),
                            child: const Icon(
                              Icons.notifications_active,
                              color: primaryColor,
                            ),
                          ),
                          title: Text(
                            "Notification performances",
                            style: customTextStyle(
                                16, FontWeight.w400, blackColor),
                          ),
                          onTap: () {
                            Get.toNamed("/notificationScreen");
                          },
                        ),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: hintTextColor),
                            ),
                            child: const Icon(
                              Icons.logout_outlined,
                              color: primaryColor,
                            ),
                          ),
                          title: Text(
                            "Log out",
                            style: customTextStyle(
                                16, FontWeight.w400, blackColor),
                          ),
                          onTap: () {},
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                        ),
                        HorizontalSpacing(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Saharanpur"),
                            Text("Dholaheri, 247231"),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 20),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: hintTextColor,
                          ),
                          suffixIcon: const Icon(
                            Icons.mic,
                            color: hintTextColor,
                          ),
                          hintText: "Search.....",
                          hintStyle: customTextStyle(
                              14, FontWeight.w400, hintTextColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: secondaryColor),
                          ),
                        ),
                      ),
                    ),
                    VerticleSpacing(height: 20),
                  ],
                ),
              ),
              Center(
                child: CarouselSlider(
                  options: CarouselOptions(
                    // height: 300.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                  ),
                  items: imageList.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          // height: 100,

                          width: MediaQuery.of(context).size.width,
                          // margin: const EdgeInsets.symmetric(horizontal: .0),
                          // decoration: const BoxDecoration(color: Colors.red),
                          child: Stack(children: [
                            Image.asset(imageUrl, fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Happy Weekend",
                                    style: customTextStyle(
                                        12, FontWeight.w500, blackColor),
                                  ),
                                  Text(
                                    "25% OFF",
                                    style: customTextStyle(
                                        22, FontWeight.w800, blackColor),
                                  ),
                                  Text(
                                    "*for All Menus",
                                    style: customTextStyle(
                                        12, FontWeight.w500, hintTextColor),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return HorizontalSpacing(width: 10);
                        },
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: index % 2 == 0
                                    ? primaryColor
                                    : secondaryColor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  AssetsImages.groceryIcon,
                                ),
                                Text(
                                  "Groceries",
                                  style: customTextStyle(
                                      15, FontWeight.w700, whiteColor),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    VerticleSpacing(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Previous Order",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: secondaryColor),
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivered",
                              style: customTextStyle(
                                  10, FontWeight.w800, blueColor),
                            ),
                            Text(
                              "On Wed, 27 Jul 2022",
                              style: customTextStyle(
                                  10, FontWeight.w400, blackColor),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                              padding: const EdgeInsets.all(5),
                              height: 76,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: secondaryBgColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    AssetsImages.dudrentImage,
                                  ),
                                  Image.asset(
                                    AssetsImages.clothImage,
                                  ),
                                  Image.asset(AssetsImages.sampuImage),
                                  Container(child: const Text("+More")),
                                ],
                              ),
                            ),
                            VerticleSpacing(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Order ID : #28292999"),
                                    Text("Final Total : ₹ 123.9"),
                                  ],
                                ),
                                // HorizontalSpacing(width: 20),
                                PrimaryBtnWidget(
                                    color: primaryColor,
                                    name: "Order Again",
                                    height: 40,
                                    btnTextSize: 11,
                                    width: 80,
                                    onTap: () {})
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticleSpacing(height: 15),
                    //track
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Track Your Order",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AssetsImages.trackImage),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order ID #12365236",
                                  style: customTextStyle(
                                      14, FontWeight.w700, whiteColor),
                                ),
                                Text(
                                  "12 iItems, est time 1 Hr",
                                  style: customTextStyle(
                                      10, FontWeight.w500, whiteColor),
                                ),
                                VerticleSpacing(height: 10),
                                PrimaryBtnWidget(
                                    color: secondaryColor,
                                    name: "Track Now",
                                    width: 100,
                                    height: 35,
                                    onTap: () {},
                                    btnTextSize: 14)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bestsellers",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(color: blackColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Milk",
                                  style: customTextStyle(
                                      14, FontWeight.w600, blackColor),
                                )
                              ],
                            ),
                          ),
                          HorizontalSpacing(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(color: blackColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Fresh Vegetables",
                                  style: customTextStyle(
                                      14, FontWeight.w600, blackColor),
                                )
                              ],
                            ),
                          ),
                          HorizontalSpacing(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              border: Border.all(color: blackColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            border: Border.all(
                                              color: blackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                            AssetsImages.clothImage),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Chips & Crisps",
                                  style: customTextStyle(
                                      14, FontWeight.w600, blackColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticleSpacing(height: 15),
                    // grocery
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Grocery & Kitchan",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Vegetable \n  & Fruits",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Atta, Rice \n   & Dal",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Oil, Ghee \n& Masala",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Bread & Dairy",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Bakery",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Dry Fruits",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Eggs",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "kitchanware",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 15),

                    //snacks
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Snacks & Drinks",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              // height: 96,
                              // width: 82,
                              decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(AssetsImages.dudrentImage),
                            ),
                            Text(
                              "Chips",
                              style: customTextStyle(
                                  12, FontWeight.w600, blackColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(AssetsImages.dudrentImage),
                            ),
                            Text(
                              "Chocolate",
                              style: customTextStyle(
                                  12, FontWeight.w600, blackColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(AssetsImages.dudrentImage),
                            ),
                            Text(
                              "Drinks & Juices",
                              style: customTextStyle(
                                  12, FontWeight.w600, blackColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(AssetsImages.dudrentImage),
                            ),
                            Text(
                              "Tea, Coffe",
                              // "Tea, Coffe & \nMilk Drinks",
                              style: customTextStyle(
                                  12, FontWeight.w600, blackColor),
                            )
                          ],
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Namkeen",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Ice-Cream",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Instant Food",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Sauces",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 15),

                    //beauty
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Beauty & Personal Care",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Dove",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Shampoo",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "FaceWash",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Sun Skin Care",
                                // "Tea, Coffe & \nMilk Drinks",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Makeup",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Body Lotion",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Perfume",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Baby Product",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 15),
                    //health care
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Health Care Dry Fruits",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "cashew nut",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Walnuts",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Almonds",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Dates",
                                // "Tea, Coffe & \nMilk Drinks",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 15),

                    //electronics
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Electronics",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "HeadPhone",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Loudspeaker",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Almonds",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Charger",
                                // "Tea, Coffe & \nMilk Drinks",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                // height: 96,
                                // width: 82,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Smart Watch",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Video Games",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Remote",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(AssetsImages.dudrentImage),
                              ),
                              Text(
                                "Wires",
                                style: customTextStyle(
                                    12, FontWeight.w600, blackColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 15),

                    //popular deals
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Deals",
                          style:
                              customTextStyle(16, FontWeight.w700, blackColor),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        )
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // height: 258,
                            // width: 175,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_border)),
                                  ],
                                ),
                                Center(
                                    child: Image.asset(
                                  AssetsImages.sampuImage,
                                  height: 100,
                                  width: 110,
                                  fit: BoxFit.contain,
                                )),
                                Center(
                                  child: Text(
                                    "Groceries",
                                    style: customTextStyle(
                                        15, FontWeight.w400, hintTextColor),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "₹ 555",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "₹ 500.99",
                                        style: customTextStyle(
                                            16, FontWeight.w800, primaryColor),
                                      ),
                                      const Spacer(),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("(243)"),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      PrimaryBtnWidget(
                                          name: "-",
                                          width: 42,
                                          height: 36,
                                          btnTextSize: 20,
                                          color: primaryColor,
                                          onTap: () {}),
                                      const Text("2"),
                                      PrimaryBtnWidget(
                                          name: "+",
                                          width: 42,
                                          height: 36,
                                          btnTextSize: 20,
                                          color: primaryColor,
                                          onTap: () {})
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        HorizontalSpacing(width: 10),
                        Expanded(
                          child: Container(
                            // height: 258,
                            // width: 175,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_border)),
                                  ],
                                ),
                                Center(
                                    child: Image.asset(
                                  AssetsImages.sampuImage,
                                  height: 100,
                                  width: 110,
                                  fit: BoxFit.contain,
                                )),
                                Center(
                                  child: Text(
                                    "T-shirt",
                                    style: customTextStyle(
                                        15, FontWeight.w400, hintTextColor),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "₹ 555",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "₹ 500.99",
                                        style: customTextStyle(
                                            16, FontWeight.w800, primaryColor),
                                      ),
                                      const Spacer(),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("(243)"),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: PrimaryBtnWidget(
                                        name: "Add to cart",
                                        width: 150,
                                        height: 35,
                                        btnTextSize: 14,
                                        color: secondaryColor,
                                        onTap: () {}),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // height: 258,
                            // width: 175,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_border)),
                                  ],
                                ),
                                Center(
                                    child: Image.asset(
                                  AssetsImages.sampuImage,
                                  height: 100,
                                  width: 110,
                                  fit: BoxFit.contain,
                                )),
                                Center(
                                  child: Text(
                                    "Veg",
                                    style: customTextStyle(
                                        15, FontWeight.w400, hintTextColor),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "₹ 555",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "₹ 500.99",
                                        style: customTextStyle(
                                            16, FontWeight.w800, primaryColor),
                                      ),
                                      const Spacer(),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("(243)"),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      PrimaryBtnWidget(
                                          name: "-",
                                          width: 42,
                                          height: 36,
                                          btnTextSize: 20,
                                          color: primaryColor,
                                          onTap: () {}),
                                      const Text("2"),
                                      PrimaryBtnWidget(
                                          name: "+",
                                          width: 42,
                                          height: 36,
                                          btnTextSize: 20,
                                          color: primaryColor,
                                          onTap: () {})
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        HorizontalSpacing(width: 10),
                        Expanded(
                          child: Container(
                            // height: 258,
                            // width: 175,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_border)),
                                  ],
                                ),
                                Center(
                                    child: Image.asset(
                                  AssetsImages.sampuImage,
                                  height: 100,
                                  width: 110,
                                  fit: BoxFit.contain,
                                )),
                                Center(
                                  child: Text(
                                    "Home Theatre",
                                    style: customTextStyle(
                                        15, FontWeight.w400, hintTextColor),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "₹ 555",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "₹ 500.99",
                                        style: customTextStyle(
                                            16, FontWeight.w800, primaryColor),
                                      ),
                                      const Spacer(),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("(243)"),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: PrimaryBtnWidget(
                                        name: "Add to cart",
                                        width: 150,
                                        height: 35,
                                        btnTextSize: 14,
                                        color: secondaryColor,
                                        onTap: () {}),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    VerticleSpacing(height: 20)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

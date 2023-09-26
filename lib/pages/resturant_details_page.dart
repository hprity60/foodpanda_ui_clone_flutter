import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_panda_clone/core/values/app_colors.dart';
import 'package:food_panda_clone/core/values/text_styles.dart';
import 'package:food_panda_clone/pages/product_detail_page.dart';

class ResturantDetailPage extends StatelessWidget {
  const ResturantDetailPage({super.key});
  static const id = "resturant_detail_page";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: Container(
                color: lightPinkColor,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/banner_image.png",
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      right: 20,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(55)),
                            child: const Icon(
                              Icons.arrow_back,
                              color: darkPinkColor,
                            ),
                          ),
                          const Spacer(),
                          Container(
                              height: 35,
                              width: 35,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: greyColor,
                                  borderRadius: BorderRadius.circular(55)),
                              child: SvgPicture.asset(
                                  "assets/icons/share_icon.svg")),
                          const SizedBox(width: 20),
                          Container(
                              height: 35,
                              width: 35,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: greyColor,
                                  borderRadius: BorderRadius.circular(55)),
                              child: SvgPicture.asset(
                                  "assets/icons/info_icon.svg")),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 50,
                      right: 50,
                      child: Text(
                        'Subway - Uttara Town',
                        style: textStyleF20W700(color: whiteColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      top: 120,
                      right: 140,
                      left: 140,
                      child: Container(
                        width: 26,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: whiteColor,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Delivery: 30 min',
                          style: textStyleF8W500(color: whiteColor),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 160,
                        left: 50,
                        right: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.star, color: whiteColor),
                            Text(
                              '4.2 (5k+)',
                              style: textStyleF8W500(color: whiteColor),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Get Rs.150 off your first order with Everyday\nfavourite by using code: HCNC. T&C apply",
                        style: textStyleF11W400(color: darkPinkColor),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 20,
                      child: Image.asset(
                        "assets/images/logo_border.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 15),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              child: Text(
                "Food Fast Deals",
                style: textStyleF11W700(color: whiteColor),
              ),
            ),
            const SizedBox(
              height: 50,
              child: TabBar(
                indicatorWeight: 3,
                indicatorColor: mainColor,
                tabs: [
                  Tab(text: 'Popular'),
                  Tab(text: 'Exclusion Subway Deals'),
                  Tab(text: 'Crazy Deals'),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/fire.svg"),
                            const SizedBox(width: 5),
                            Text(
                              "Popular",
                              style: textStyleF22W700(),
                            )
                          ],
                        ),
                        Text(
                          "Most ordered right now",
                          style: textStyleF14W600(),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 3,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider();
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PrtoductDetailPage.id);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Popular Deal ${index + 1}",
                                          style: textStyleF14W600(),
                                        ),
                                        Text(
                                          "6 inch sub & 250 ml drink",
                                          style: textStyleF10W400(),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text(
                                              "Rs. 333.00",
                                              style: textStyleF10W400(),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "Rs. 555.00",
                                              style: textStyleF10W400(
                                                  color: blackColor
                                                      .withOpacity(.25)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/images/food_7.png")
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/fire.svg"),
                            const SizedBox(width: 5),
                            Text(
                              "Exclusion Subway Deals",
                              style: textStyleF22W700(),
                            )
                          ],
                        ),
                        Text(
                          "Most ordered right now",
                          style: textStyleF14W600(),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 3,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider();
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PrtoductDetailPage.id);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Exclusive Subway Deal ${index + 1}",
                                          style: textStyleF14W600(),
                                        ),
                                        Text(
                                          "6 inch sub & 250 ml drink",
                                          style: textStyleF10W400(),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text(
                                              "Rs. 333.00",
                                              style: textStyleF10W400(),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "Rs. 555.00",
                                              style: textStyleF10W400(
                                                  color: blackColor
                                                      .withOpacity(.25)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/images/food_8.png")
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/fire.svg"),
                            const SizedBox(width: 5),
                            Text(
                              "Crazy Deals",
                              style: textStyleF22W700(),
                            )
                          ],
                        ),
                        Text(
                          "Most ordered right now",
                          style: textStyleF14W600(),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 3,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider();
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PrtoductDetailPage.id);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Crazy Deal ${index + 1}",
                                          style: textStyleF14W600(),
                                        ),
                                        Text(
                                          "6 inch sub & 250 ml drink",
                                          style: textStyleF10W400(),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text(
                                              "Rs. 333.00",
                                              style: textStyleF10W400(),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "Rs. 555.00",
                                              style: textStyleF10W400(
                                                  color: blackColor
                                                      .withOpacity(.25)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/images/food_7.png")
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

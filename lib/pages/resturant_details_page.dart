import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_panda_clone/core/values/app_colors.dart';
import 'package:food_panda_clone/core/values/text_styles.dart';

class ResturantDetailPage extends StatelessWidget {
  const ResturantDetailPage({super.key});
  static const id = "resturant_detail_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            child:
                                SvgPicture.asset("assets/icons/info_icon.svg")),
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
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_panda_clone/core/values/app_colors.dart';
import 'package:food_panda_clone/pages/resturant_details_page.dart';
import 'package:food_panda_clone/pages/widgets/custom_textfield.dart';

import '../core/values/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const id = "home_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 2,
                      color: blackColor.withOpacity(.25),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.menu,
                      color: mainColor,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Home', style: textStyleF10W700(color: mainColor)),
                        Text(
                          'Uttara, Dhaka',
                          style: textStyleF8W500(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/icons/fab_icon.svg"),
                    const SizedBox(width: 20),
                    SvgPicture.asset("assets/icons/cart_icon.svg"),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Good Evening, Smrity',
                            style: textStyleF14W700(),
                          ),
                          Text(
                            'What’s for dinner? There are 567\nrestaurants in your area',
                            style: textStyleF10W400(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/food_1.png",
                          height: 90,
                          width: 90,
                          fit: BoxFit.contain,
                        ),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  hintText: "Search for shops & resturants",
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food Delivery',
                            style: textStyleF14W700(color: whiteColor),
                          ),
                          Text(
                            'Order food you love',
                            style: textStyleF11W400(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/food_2.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.5,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/food_3.png',
                                height: 100,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'pandamart',
                                style: textStyleF14W700(),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Everyday up to\n20% off',
                                style: textStyleF10W400(),
                              ),
                            ],
                          )),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.5,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: pinkColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/food_4.png',
                                height: 50,
                                width: double.infinity,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Pick-Up',
                                style: textStyleF14W700(),
                              ),
                              Text(
                                'Everyday up to\n25% off',
                                style: textStyleF10W400(),
                              ),
                            ],
                          )),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/food_5.png',
                                height: 40,
                                width: double.infinity,
                              ),
                              Text(
                                'Shops',
                                style: textStyleF14W700(),
                              ),
                              Text(
                                'Grocery & more..',
                                style: textStyleF10W400(),
                              ),
                              const SizedBox(height: 5),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Your Resturants',
                  style: textStyleF14W600(),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 10);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ResturantDetailPage.id);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  "assets/images/food_6.png",
                                ),
                                Positioned(
                                  top: 5,
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: darkPinkColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        'Best Food Deals',
                                        style:
                                            textStyleF8W500(color: whiteColor),
                                      )),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 10,
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Text(
                                        '30 min',
                                        style: textStyleF8W500(),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Subway - Dhaka',
                              style: textStyleF11W700(),
                            ),
                            Text(
                              'Fast Food,American,Meat,Halal',
                              style: textStyleF10W400(
                                  color: blackColor.withOpacity(.7)),
                            ),
                            Text(
                              '৳150 delivery free',
                              style: textStyleF8W500(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        )),
      ),
    );
  }
}

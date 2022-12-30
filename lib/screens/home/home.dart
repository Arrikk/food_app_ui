import 'package:flutter/material.dart';
import 'package:food_app/constants/colors.dart';
import 'package:food_app/models/restaurants.dart';
import 'package:food_app/screens/home/widgets/food_list.dart';
import 'package:food_app/screens/home/widgets/food_list_view.dart';
import 'package:food_app/screens/home/widgets/restaurant_info.dart';
import 'package:food_app/widgets/custom_appbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final restaurant = Restaurant.getRestaurant();
  var selected = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbar(
              Icons.arrow_back_ios, Icons.favorite_border_outlined),
          RestaurantInfo(restaurant),
          FoodList(
            restaurant,
            selected,
            (int index) => setState(() {
              selected = index;
              pageController.jumpToPage(index);
            }),
          ),
          Expanded(
            child: FoodListView(
              selected,
              (index) => setState(() => selected = index),
              pageController,
              restaurant,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                  width: 8,
                  height: 8,
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                      color: kPrimaryColor, padding: 2, width: 2),
                ),
              ),     
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}

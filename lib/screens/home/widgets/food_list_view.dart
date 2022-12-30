import 'package:flutter/material.dart';
import 'package:food_app/models/restaurants.dart';
import 'package:food_app/screens/details/details.dart';
import 'package:food_app/screens/home/widgets/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  const FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        children: category
            .map(
              (e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: ((context, index) => GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            restaurant.menu[category[selected]]![index],
                          ),
                        ),
                      ),
                      child:
                          FoodItem(restaurant.menu[category[selected]]![index]),
                    )),
                separatorBuilder: (_, i) => const SizedBox(
                  height: 10,
                ),
                itemCount: restaurant.menu[category[selected]]!.length,
              ),
            )
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/constants/colors.dart';
import 'package:food_app/models/food.dart';

class Ingredients extends StatelessWidget {
  final Food food;
  const Ingredients(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    final ingredients = food.ingredients;
    return Container(
      color: kBackground,
      width: double.maxFinite,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ingredients",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          const SizedBox(height: 20),
          Container(
            // padding: const EdgeInsets.symmetric(vertical: 10),
            height: 130,
            child: ListView.separated(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, i) => Container(
                padding: const EdgeInsets.symmetric(vertical:5, horizontal: 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Image.asset(ingredients[i].values.first, height: 60,),
                    const SizedBox(height: 10),
                    Text(ingredients[i].keys.first)
                  ],
                ),
              ),
              separatorBuilder: (_, i) => const SizedBox(width: 10),
              itemCount: ingredients.length,
            ),
          )
        ],
      ),
    );
  }
}

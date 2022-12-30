import 'package:flutter/material.dart';
import 'package:food_app/constants/colors.dart';
import 'package:food_app/models/food.dart';

class FoodImage extends StatelessWidget {
  final Food food;
  const FoodImage(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Stack(
        children: [
            Column(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(flex: 1, child: Container(
                  decoration: const BoxDecoration(
                    color: kBackground,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    )
                  ),
                )),
              ],
            ),
            Align(alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 240,
                width: 240,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(82, 0, 0, 0),
                      blurRadius: 10,
                      offset: Offset(-0, 7),
                    )
                  ]
                ),
                child: Image.asset(food.imgUrl, fit: BoxFit.cover,),
              ),
            ),
        ],
      ),
    );
  }
}

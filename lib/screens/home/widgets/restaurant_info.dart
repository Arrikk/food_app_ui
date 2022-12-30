import 'package:flutter/material.dart';
import 'package:food_app/constants/colors.dart';
import 'package:food_app/models/restaurants.dart';

class RestaurantInfo extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantInfo(this.restaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            restaurant.waitTime,
                            style: const TextStyle(color: Colors.white),
                          )),
                      const SizedBox(width: 10),
                      Text(restaurant.distance,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(width: 10),
                      Text(restaurant.label,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                child: Image.asset(
                  restaurant.logoUrl,
                  width: 80,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${restaurant.desc}"',
                  style: const TextStyle(fontSize: 16)),
              Row(
                children: [
                  const Icon(
                    Icons.star_outline,
                    color: kPrimaryColor,
                  ),
                  Text(
                    restaurant.score.toString(),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

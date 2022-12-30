import 'package:flutter/material.dart';
import 'package:food_app/constants/colors.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/screens/details/widget/food_details.dart';
import 'package:food_app/screens/details/widget/food_quantity.dart';
import 'package:food_app/screens/details/widget/food_image.dart';
import 'package:food_app/screens/details/widget/ingredient.dart';
import 'package:food_app/widgets/custom_appbar.dart';

class DetailsPage extends StatelessWidget {
  final Food food;
  const DetailsPage(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(
              Icons.arrow_back_ios,
              Icons.search_rounded,
              callback: () => Navigator.of(context).pop(),
            ),
            FoodImage(food),
            FoodDetails(food),
            FoodQuantity(food),
            Ingredients(food),
            Container(
              padding: const EdgeInsets.all(20),
              color: kBackground,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "About",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your account has been suspended due to an overdue balance. Please reach out to your team's account administrator (individuals that hold Biller or Owner roles) to restore service.",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 0.8, height: 1.3),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 80,
        height: 40,
        child: RawMaterialButton(
          fillColor: kPrimaryColor, 
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                const Icon(Icons.shopping_bag_outlined, size: 30,),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Text('2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                )
            ],
          ),
        ),
      ),
    );
  }
}

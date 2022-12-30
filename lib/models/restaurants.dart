import 'package:food_app/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);

  static Restaurant getRestaurant() {
    return Restaurant(
      'Restaurant',
      '20-50mins',
      '2.5km',
      'Restaurant',
      'asset/dish/res_logo.png',
      'Nigerians has the best Restaurants',
      4.9,
      {
        'Recommended': Food.generateRecommended(),
        'Popular': Food.generatePopular(),
        'Locals': [],
        'Fats': []
      },
    );
  }
}

class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.highLight = false});

  static List<Food> generatePopular() {
    return [
      Food(
        'asset/dish/dish1.png',
        'Good protein Burger',
        'Pancake',
        '50 Mins',
        4.5,
        '324 kcal',
        23,
        202,
        [
          {'noodles': "asset/dish/ingre1.png"},
          {'Egg': "asset/dish/ingre3.png"},
          {'Pigi': "asset/dish/ingre2.png"},
        ],
        'Best served and Des br Bruiz',
        highLight: true,
      ),
      Food(
        'asset/dish/dish2.png',
        'Nigerian Dish',
        'Semo and Egusi',
        '70 Mins',
        5.0,
        '314 kcal',
        122,
        22,
        [
          {'meat': "asset/dish/ingre2.png"},
          {'Pepper': "asset/dish/ingre3.png"},
          {'Maggi': "asset/dish/ingre1.png"},
        ],
        'Best served and Des br Bruiz',
        highLight: false,
      ),
    ];
  }

  static List<Food> generateRecommended() {
    return [
      Food(
        'asset/dish/dish3.png',
        'I dont know',
        'Unknown',
        '20 Mins',
        2.5,
        '324 kcal',
        233,
        2024,
        [
          {'noodles': "asset/dish/ingre1.png"},
          {'Egg': "asset/dish/ingre2.png"},
          {'Pigi': "asset/dish/ingre3.png"},
        ],
        'Best served and Des br Bruiz',
        highLight: false,
      ),
      Food(
        'asset/dish/dish4.png',
        'Nigerian Dish',
        'Semo and Egusi',
        '70 Mins',
        5.0,
        '314 kcal',
        122,
        22,
        [
          {'meat': "asset/dish/ingre2.png"},
          {'Pepper': "asset/dish/ingre1.png"},
          {'Maggi': "asset/dish/ingre3.png"},
        ],
        'Best served and Des br Bruiz',
        highLight: false,
      ),
    ];
  }
}

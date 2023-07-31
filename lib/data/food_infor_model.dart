class FoodInfoModel {
  final String name;
  final String description;
  final int rate;
  final int rateNumber;
  final String imageAddress;
  final String restaurantAddress;

  FoodInfoModel(this.name, this.description, this.rate, this.rateNumber,
      this.imageAddress, this.restaurantAddress);
}
final List<FoodInfoModel> foodInfoListMockData = [
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 100,
      'assets/images/foods/food1.png','An BBQ Su Van Hanh'),
  FoodInfoModel('Beef Bacon', 'USDA beef bacon', 3, 33,
      'assets/images/foods/food2.png','An BBQ Dong Khoi'),
  FoodInfoModel('Beef Stake', 'USDA beef steak', 2, 150,
      'assets/images/foods/food3.png','An BBQ Dong Khoi'),
  FoodInfoModel('Salad', 'Lemony White Bean Salad with Prosciutto', 5, 1000,
      'assets/images/foods/food4.png','An BBQ Dong Khoi'),
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 99,
      'assets/images/foods/food1.png','An BBQ Dong Khoi'),
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 99,
      'assets/images/foods/food2.png','An BBQ Dong Khoi'),
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 99,
      'assets/images/foods/food3.png','An BBQ Dong Khoi'),
];

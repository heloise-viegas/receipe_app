class Meal {
  String? mealName;
  String? mealImg;
  String? mealId;

  Meal({this.mealName, this.mealId, this.mealImg});

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
      mealName: json['strMeal'],
      mealImg: json['strMealThumb'],
      mealId: json['idMeal']);
}

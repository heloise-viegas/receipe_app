import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:receipes_app/modals/category.dart';
import 'package:receipes_app/modals/meal.dart';
import 'package:receipes_app/modals/receipe.dart';

class NetworkAdapter {
  static const String baseUrl = 'https://www.themealdb.com/api/json/v1/1/';

  Future<dynamic> getCategories() async {
    String categoryId = baseUrl + 'categories.php';
    List<Category> _categories = [];
    // print(jsonDecode(response.body));
    Map<String, dynamic> values = await getData(categoryId);
    List<dynamic> data = values['categories'];
    data.forEach((element) {
      //  print(element);
      _categories.add(
        Category.fromJson(element),
      );
    });
    return _categories;
  }

  Future<dynamic> getDishes(String? category) async {
    String mealId = baseUrl + 'filter.php?i=' + category!;
    List<Meal> _meals = [];
    Map<String, dynamic> values = await getData(mealId);
    List<dynamic> data = values['meals'];
    data.forEach((element) {
      _meals.add(
        Meal.fromJson(element),
      );
    });
    return _meals;
  }

  Future<dynamic> getReceipe(String? receipe) async {
    String receipeId = baseUrl + 'lookup.php?i=' + receipe!;
    late Recipe _receipe;
    Map<String, dynamic> values = await getData(receipeId);
    List<dynamic> data = values['meals'];
    data.forEach((element) {
      _receipe = Recipe.fromJson(element);
    });
    // print(_receipe.receipeIngredient1);
    return _receipe;
  }

  Future<dynamic> getData(String url) async {
    Uri uri = Uri.parse(url);
    try {
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        Map<String, dynamic> values = jsonDecode(response.body);
        return values;
      } else {
        throw 'Unable to fetch request';
      }
    } catch (Exception) {
      print(Exception);
    }
  }
}

/*
//'https://www.themealdb.com/api/json/v1/1/categories.php';
reponse type:Map{'categories':values}
{categories: [{idCategory: 1, strCategory: Beef, strCategoryThumb: https://www.themealdb.com/images/category/beef.png,
 strCategoryDescription: Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef
 since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]},
 {idCategory: 2, strCategory: Chicken, strCategoryThumb: https://www.themealdb.com/images/category/chicken.png, strCategoryDescription: Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as
a source of food (consuming both their meat and eggs) and, more rarely, as pets.}]}
*/

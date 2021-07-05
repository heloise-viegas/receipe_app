import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receipes_app/constants.dart';
import 'package:receipes_app/modals/category.dart';
import 'package:receipes_app/modals/meal.dart';
import 'package:receipes_app/services/networkAdapter.dart';
import 'package:receipes_app/ui%20components/reusableCard.dart';
import 'package:receipes_app/views/meal_view.dart';

class HomeView extends StatelessWidget {
  static const String id = 'Home';
  final List<Category> categories;
  HomeView({required this.categories});

  @override
  Widget build(BuildContext context) {
    NetworkAdapter networkAdapter = NetworkAdapter();
    List<Meal> meals = [];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Text(
            'What are you cooking today?',
            style: Constants.kBtnTextStyle,
          ),
          backgroundColor: Colors.grey.shade300,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 3
                        : 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                //    childAspectRatio: (2 / 2),
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return ReusableCard(
                  isMeal: false,
                  itemImg: categories[index].catImg,
                  itemName: categories[index].catName,
                  onTapped: () async {
                    meals = await networkAdapter
                        .getDishes(categories[index].catName);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MealView(meals: meals);
                      }),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

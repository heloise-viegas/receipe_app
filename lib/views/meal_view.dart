import 'package:flutter/material.dart';
import 'package:receipes_app/modals/meal.dart';
import 'package:receipes_app/modals/receipe.dart';
import 'package:receipes_app/services/networkAdapter.dart';
import 'package:receipes_app/ui%20components/reusableCard.dart';
import 'package:receipes_app/views/receipe_view.dart';

class MealView extends StatelessWidget {
  final List<Meal> meals;
  MealView({required this.meals});

  @override
  Widget build(BuildContext context) {
    NetworkAdapter networkAdapter = NetworkAdapter();
    Recipe receipe;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: meals.length,
                itemBuilder: (context, index) {
                  return Hero(
                    tag: meals[index].mealName.toString(),
                    child: ReusableCard(
                      isMeal: true,
                      itemName: meals[index].mealName,
                      itemImg: meals[index].mealImg,
                      onTapped: () async {
                        receipe = await networkAdapter
                            .getReceipe(meals[index].mealId);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ReceipeView(receipe: receipe);
                          }),
                        );
                      },
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}

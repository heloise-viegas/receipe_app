import 'package:flutter/material.dart';
import 'package:receipes_app/modals/receipe.dart';
import 'package:receipes_app/ui%20components/reusableCard.dart';

class ReceipeView extends StatelessWidget {
  final Recipe receipe;
  ReceipeView({required this.receipe});

  @override
  Widget build(BuildContext context) {
    List<String?> ingredients = receipe.getList();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: receipe.receipeName.toString(),
                  child: ReusableCard(
                    isMeal: true,
                    itemName: receipe.receipeName,
                    itemImg: receipe.receipeImg,
                    onTapped: () {},
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  child: ListView.builder(
                      itemCount: ingredients.length,
                      itemBuilder: (context, i) {
                        if (ingredients[i] == '' || ingredients[i] == null) {
                          return Text('1');
                        } else {
                          return Text(ingredients[i]!);
                        }
                      }),
                ),
                Text(receipe.receipeInstructions!),
                Text(receipe.receipeYoutube!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

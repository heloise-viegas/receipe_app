import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receipes_app/constants.dart';
import 'package:receipes_app/modals/category.dart';

class HomeView extends StatelessWidget {
  static const String id = 'Home';
  final List<Category> categories;
  HomeView({required this.categories});

  @override
  Widget build(BuildContext context) {
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
                  categImg: categories[index].catImg,
                  categName: categories[index].catName,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  late String? categName;
  late String? categImg;
  ReusableCard({required this.categName, required this.categImg});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(2, 2),
          blurRadius: 10,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Colors.white.withOpacity(0.85),
          offset: Offset(-2, -2),
          blurRadius: 8,
          spreadRadius: 2,
        ),
      ], borderRadius: BorderRadius.circular(50), color: Colors.grey.shade300),
      child: Column(
        children: [
          Image.network(
            categImg!,
            fit: BoxFit.fill,
            // height: 50,
            // width: 50,
          ),
          Text(
            categName!,
            style: Constants.kBtnTextStyle,
          )
        ],
      ),
    );
  }
}

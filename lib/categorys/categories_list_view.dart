import 'package:flutter/material.dart';
import 'package:news/categorys/category_card.dart';
import 'package:news/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business(1).png', categoryName: 'Busniess'),
    CategoryModel(
        image: 'assets/entertaiment.png', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/general.png', categoryName: 'General'),
    CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.png', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.png', categoryName: 'Sport'),
    CategoryModel(image: 'assets/Untitled.png', categoryName: 'Technologe'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Categorycard(
                  category: categories[index],
                ),
              );
            }),
      ),
    );
  }
}

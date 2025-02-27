import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/pages/category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image),
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )),
        ),
      ),
    );
  }
}

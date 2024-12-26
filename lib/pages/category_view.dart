import 'package:flutter/material.dart';
import 'package:news/categorys/news_list_vews_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "اليوم",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'اخبار',
                style: TextStyle(color: Color.fromARGB(255, 255, 185, 81)),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}

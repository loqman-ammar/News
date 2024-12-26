import 'package:flutter/material.dart';
import 'package:news/categorys/categories_list_view.dart';
import 'package:news/categorys/news_list_vews_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: AppBar(
              //  backgroundColor: const Color.fromARGB(255, 101, 138, 168),
              ),
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "اليوم",
                style: TextStyle(color: Color.fromARGB(255, 255, 188, 4)),
              ),
              Text(
                'اخبار',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                category: 'sport',
              ),
            ],
          ),
        ));
  }
}

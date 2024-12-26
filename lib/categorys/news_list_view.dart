import 'package:flutter/material.dart';
import 'package:news/categorys/news_card.dart';
import 'package:news/models/article_model.dart';

class NewsListVew extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListVew({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsCard(
          articleModel: articles[index],
        ),
      );
    }));
  }
}

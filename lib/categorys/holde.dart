/*  
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/categorys/news_card.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_service.dart';

class NewsListVew extends StatefulWidget {
  const NewsListVew({
    super.key, required List<ArticleModel> articles,
  });

  @override
  State<NewsListVew> createState() => _NewsListVewState();
}

class _NewsListVewState extends State<NewsListVew> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
            heightFactor: 13,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.black,
            ),
          ))
        : SliverList(
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
*/
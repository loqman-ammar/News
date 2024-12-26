import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_service.dart';

import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getTopHeadlinesNews(
      category: widget.category,
    );
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SliverToBoxAdapter(
          child: Center(
        heightFactor: 13,
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
          color: Colors.black,
        ),
      ));
    }

    if (articles.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Text('عذرا لا توجد اخبار '),
          ),
        ),
      );
    }

    return NewsListVew(articles: articles);
  }
}

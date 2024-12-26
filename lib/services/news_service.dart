import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlinesNews(
      {required String category}) async {
    try {
      var response = await dio
          .get("https://newsapi.org/v2/top-headlines", queryParameters: {
        "country": "us",
        "apiKey": "545af579de6644198a329ff6ae73e8aa",
        "category": category,
      });

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);

        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

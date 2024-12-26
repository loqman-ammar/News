import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            articleModel.image ??
                'https://ajr.org/wp-content/themes/AJR-theme/images/news-placeholder.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title ?? 'This new does not has a title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? 'This new does not has a subtitle ',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}



import 'package:clean_architecture/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
   int ? id,
    String? author,
    String? tittle,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,

});

  factory ArticleModel.fromJson(Map<String , dynamic> map){
    return ArticleModel(
      author: map['author']?? "",
      tittle: map['title']??  "",
    description: map['description']?? "",
    url: map['url']?? "",
      urlToImage: map['urlToImage']?? "",
      publishedAt: map['publishedAt']?? "",
      content: map['content']?? "",
    );
  }
}
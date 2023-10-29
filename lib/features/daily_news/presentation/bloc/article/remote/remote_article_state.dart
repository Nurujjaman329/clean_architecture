import 'package:clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;

  final DioError? error;

  RemoteArticleState(this.articles, this.error);

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticleState {
    RemoteArticlesLoading(super.articles, super.error);
}

class RemoteArticlesDone extends RemoteArticleState {
   RemoteArticlesDone(List<ArticleEntity>article): super(articles: article)
}

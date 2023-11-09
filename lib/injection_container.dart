import 'package:clean_architecture/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_architecture/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:clean_architecture/features/daily_news/domain/repository/article_repository.dart';
import 'package:clean_architecture/features/daily_news/domain/usecase/get_article.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> intializeDependencies() async {
  //Dio

  sl.registerSingleton<Dio>(Dio());

  //Dependencies

  sl.registerSingleton<NewsApiService>(
    NewsApiService(
      sl(),
    ),
  );

  sl.registerSingleton<ArticleRepository>(
    ArticleRepositoryImpl(
      sl(),
    ),
  );

  //UseCases

  sl.registerSingleton<GetArticleUseCase>(
    GetArticleUseCase(
      sl(),
    ),
  );
}

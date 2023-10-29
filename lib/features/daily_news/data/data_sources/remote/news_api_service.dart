import 'package:clean_architecture/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constrants/constrants.dart';
import '../../models/article_model.dart';
part 'news_api_service.g.dart';


@RestApi(baseUrl:newsAPIBaseUrl)

abstract class NewsApiService{
  factory NewsApiService (Dio dio) = _NewsApiService;


@GET('/top-headlines')

Future<HttpResponse<List<ArticleModel>>>  getNewsArticle({
  @Query("apiKey") String ? apiKey,
  @Query("country") String ? country,
  @Query("category") String ? category,


})
}
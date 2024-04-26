import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../model/anime_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('images/random')
  Future<AnimeResponse> getAnime();
}

Dio buildDioClient(String base){
  final dio = Dio()..options = BaseOptions(baseUrl: base);
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
      maxWidth: 90
    )
  );
  return dio;
}
 // final String base_url = "https://api.nekosapi.com/v3/images/random";
import 'package:api_version_1/manager/api_service.dart';
import 'package:api_version_1/model/anime_response.dart';

class AnimeRepository {
  final _api = ApiService(buildDioClient("https://api.nekosapi.com/v3/"));

  Future<List<Items>> getAnimes() async {
    try {
      final response = await _api.getAnime();
      return response.items ?? [];
    } catch (e) {
      return [];
    }
  }
}

// final String base_url = "https://api.nekosapi.com/v3/images/random";

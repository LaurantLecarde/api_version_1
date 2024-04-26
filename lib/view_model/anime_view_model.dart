import 'package:api_version_1/repository/anime_repository.dart';
import 'package:flutter/cupertino.dart';

import '../model/anime_response.dart';

class AnimeViewModel extends ChangeNotifier {
  final _repo = AnimeRepository();
  bool loading = false;
  final List<Items> animeList = [];

  getAnimes()async {
    loading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    notifyListeners();
    animeList.addAll(await _repo.getAnimes());
    notifyListeners();
  }
}
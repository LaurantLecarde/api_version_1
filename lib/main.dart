import 'package:api_version_1/screen/main_page.dart';
import 'package:api_version_1/view_model/anime_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ApiVersionOne());
}

class ApiVersionOne extends StatelessWidget {
  const ApiVersionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>AnimeViewModel(),
      child: MaterialApp(
        title: "Anime Plus",
        theme: ThemeData(
          useMaterial3: true
        ),
        home: MainPage(),
      ),
    );
  }
}


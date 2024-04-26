import 'package:api_version_1/screen/detail_page.dart';
import 'package:api_version_1/view_model/anime_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:animations/animations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  late AnimeViewModel _viewModel;
  bool _isFirstTime = false;

  @override
  void initState() {
    _isFirstTime = true;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    if(_isFirstTime){
      _viewModel = Provider.of<AnimeViewModel>(context);
      _viewModel.getAnimes();
      _isFirstTime = false;
    }

    return Scaffold(
      body:_viewModel.loading ? CupertinoActivityIndicator(radius: 50,color: Colors.red): _getTheData(),
    );
  }
  _getTheData(){
    return Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 400,
          viewportFraction: 0.7,
          enlargeCenterPage: true
        ),
        itemCount: _viewModel.animeList.length,
        itemBuilder: (context,index,pageIndex)=>OpenContainer(
          closedElevation: 0,
          closedBuilder: (context,invoke){
            final anime = _viewModel.animeList[index];
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "${anime.imageUrl}",fit: BoxFit.cover,
                ),
              ),
            );
          },
          openBuilder: (context,invoke)=>DetailPage(anime: _viewModel.animeList[index])
        ),
      ),
    );
  }
}

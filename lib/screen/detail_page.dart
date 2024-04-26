import 'package:flutter/material.dart';

import '../model/anime_response.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key,required this.anime});

final Items anime;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getThedata(),
    );
  }
  _getThedata(){
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 600,
            width: double.infinity,
            child: Image.network("${anime.imageUrl}",fit: BoxFit.cover)
          ),
          Text("Artist  ${anime.artist}",style: TextStyle(fontSize: 30)),
          Text("Character  ${anime.characters}",style: TextStyle(fontSize: 30)),
          Text("Rating   ${anime.rating}",style: TextStyle(fontSize: 30)),
          Text("ID  ${anime.id}",style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:tiktok_example/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  // flag
  bool initialLoading = true;

  List<VideoPost> videos = [];

  // funcion para cargar videos
  Future<void> loadNextPage() async {

    // todo; cargar videos

    notifyListeners();
    
  }

}
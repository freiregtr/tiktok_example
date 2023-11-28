
import 'package:flutter/material.dart';
import 'package:tiktok_example/domain/entities/video_post.dart';
import 'package:tiktok_example/infraestructure/models/local_video_model.dart';
import 'package:tiktok_example/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  // TODO: Repository, DataSource

  // flag
  bool initialLoading = true;

  List<VideoPost> videos = [];

  // funcion para cargar videos
  Future<void> loadNextPage() async {

    await Future.delayed(const Duration( seconds: 2 ));

    final List<VideoPost> newVideos = videoPosts.map(
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    // todo; cargar videos
    videos.addAll( newVideos );
    initialLoading = false;

    notifyListeners();
    
  }

}
import 'package:flutter/material.dart';
import 'package:tiktok_example/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {

  // receive list of videos
  final List<VideoPost> videos;

  // constructor
  const VideoScrollableView({

    super.key,
    required this.videos

  });

  @override 
  Widget build(BuildContext context) {
    
    return PageView(

      // vertical axis m(horizontal default)
      scrollDirection: Axis.vertical,

      // physics of bouncing scroll
      physics: const BouncingScrollPhysics(),

      children: [
        Container(color: Colors.red,),
        Container(color: Colors.blue,)

      ],
    );

  }
}
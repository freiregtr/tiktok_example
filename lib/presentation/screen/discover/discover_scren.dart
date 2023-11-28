import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_example/presentation/providers/discover_provider.dart';
import 'package:tiktok_example/presentation/widget/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // referencia a DiscoverProvider
    final discoverProvider = context.watch<DiscoverProvider>();


    return Scaffold(

      // validate flag discoverProvider method
      // strokeWidth: 2: width line in placeholder
      body: discoverProvider.initialLoading
        ? const Center( child: CircularProgressIndicator( strokeWidth: 2, ), )
        : VideoScrollableView(videos: discoverProvider.videos)

    );
  }
}
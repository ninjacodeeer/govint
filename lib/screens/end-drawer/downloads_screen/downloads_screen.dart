import 'dart:io';

import 'package:flutter/material.dart';
import 'package:govint/widgets/downloads_widget/downloads_widget.dart';
import 'package:list_all_videos/list_all_videos.dart';
import 'package:list_all_videos/model/video_model.dart';
import 'package:path_provider/path_provider.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ListAllVideos().getAllVideosPath(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  VideoDetails currentVideo = snapshot.data![index];
                  return DownloadsWidgetComponent(
                    title: currentVideo.videoName,
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

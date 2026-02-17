//toVideoPostEntity

import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel{
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory LocalVideoModel.fromMap(Map<String, dynamic> map) {
    return LocalVideoModel(
      name: map['name'] ?? 'no name', // los ?? sirven para poner un valor por defecto si no hay uno
      videoUrl: map['videoUrl'] ?? 'no url',
      likes: map['likes']?.toInt() ?? 0,
      views: map['views']?.toInt() ?? 0,
    );
  }

  VideoPost toVideoPostEntity(){
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}

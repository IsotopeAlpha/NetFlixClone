import 'package:flutter/material.dart';

class Content {
  final String? name;
  final String? imageUrl;
  final String? titleImageUrl;
  final String? videoUrl;
  final String? description;
  final String? episodes;
  final String? size;
  final Color? color;

  const Content(
      {@required this.name,
      @required this.imageUrl,
      this.titleImageUrl,
      this.videoUrl,
      this.description,
      this.color,
      this.episodes,
      this.size});
}

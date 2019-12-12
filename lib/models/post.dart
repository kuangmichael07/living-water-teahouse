import 'package:flutter/foundation.dart';

class Post {
  final String id;
  final String title;
  final String description;
  final DateTime createDate;
  final String imageUrl;
  bool isFavorite;

  Post({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.createDate,
    @required this.imageUrl,
    this.isFavorite = false,
  });
}
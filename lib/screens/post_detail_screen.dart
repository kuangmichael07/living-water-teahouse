import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  final String title;
  // final double price;

  PostDetailScreen(this.title);
  static const routeName = '/post-detail';

  @override
  Widget build(BuildContext context) {
    final postId = ModalRoute.of(context).settings.arguments as String; // is the id!
    // ...
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}

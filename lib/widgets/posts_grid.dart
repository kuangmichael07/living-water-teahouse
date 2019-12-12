import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/post.dart';
import '../widgets/post_item.dart';
import '../providers/post_provider.dart';

class PostsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final postsData = Provider.of<Posts>(context);
    final posts = postsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: posts.length,
      itemBuilder: (ctx, i) => PostItem(
            posts[i].id,
            posts[i].title,
            posts[i].imageUrl,
          ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
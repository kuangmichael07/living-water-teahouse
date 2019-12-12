import 'package:flutter/material.dart';
import '../models/post.dart';
import '../widgets/post_item.dart';

class PostsOverviewScreen extends StatelessWidget {
  final List<Post> loadedPosts = [
    Post(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      createDate: DateTime.now(),
      // price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Post(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      createDate: DateTime.now(),
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Post(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      createDate: DateTime.now(),
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Post(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      createDate: DateTime.now(),
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffold2 = Scaffold(
      appBar: AppBar(
        title: Text('New Posts'),
      ),
      body: new PostsGrid(loadedPosts: loadedPosts),
    );
    var scaffold = scaffold2;
    return scaffold;
  }
}

class PostsGrid extends StatelessWidget {
  const PostsGrid({
    Key key,
    @required this.loadedPosts,
  }) : super(key: key);

  final List<Post> loadedPosts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedPosts.length,
      itemBuilder: (ctx, i) => PostItem(
            loadedPosts[i].id,
            loadedPosts[i].title,
            loadedPosts[i].imageUrl,
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

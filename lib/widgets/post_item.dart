import 'package:flutter/material.dart';
import '../screens/post_detail_screen.dart';

// import '../screens/product_detail_screen.dart';

class PostItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  PostItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    print(imageUrl);
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              PostDetailScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}

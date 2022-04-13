import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              ((context, index) {
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover
                  ),
                );
              }),
              childCount: posts.length
            ), 
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1.2
            )
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);
  // 列表项 处理
  Widget _listItemBuilder(BuildContext context, int index) {
    // return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 16.0)
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  debugPrint('Tap');
                },
              ),
            ),
          )
        ],
      ),
      // child: Column(children: [
      //   Image.network(posts[index].imageUrl),
      //   const SizedBox(height: 16.0),
      //   Text(
      //     posts[index].title,
      //     style: Theme.of(context).textTheme.subtitle1,
      //   ),
      //   Text(
      //     posts[index].author,
      //     style: Theme.of(context).textTheme.subtitle2,
      //   ),
      //   const SizedBox(height: 16.0)
      // ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}

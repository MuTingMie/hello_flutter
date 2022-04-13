import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverSafeArea( // 在安全区域显示
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            )
          )
          
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        ((context, index) {
          // return Container(
          //   child: Image.network(
          //     posts[index].imageUrl,
          //     fit: BoxFit.cover
          //   ),
          // );
          return Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover
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
    );
  }
}

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        ((context, index) {
          // return Container(
          //   child: Image.network(
          //     posts[index].imageUrl,
          //     fit: BoxFit.cover
          //   ),
          // );

          // return Image.network(
          //   posts[index].imageUrl,
          //   fit: BoxFit.cover
          // );

          return Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              clipBehavior: Clip.antiAlias,
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.6),
              // child: AspectRatio(
              //   aspectRatio: 16/9,
              //   child: Image.network(
              //     posts[index].imageUrl,
              //     fit: BoxFit.cover
              //   ),
              // ),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].title,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].title,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.white
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          );
        }),
        childCount: posts.length
      ), 
    );
  }
}
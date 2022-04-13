import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // PageView 
    // return const PageViewDemo();

    // PageView builder
    return const PageViewBuilderDemo();
  }
}


class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({ Key? key }) : super(key: key);

  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author
              )
            ],
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // PageView builder
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder
    );
  }
}


class PageViewDemo extends StatelessWidget {
  const PageViewDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      //// 默认 true  设置false后 页面可以滑到任意位置 不会自动翻页
      // pageSnapping: false,
      //// 页面位置 倒转 默认 false
      // reverse: true,
      //// 滚动方向 默认水平方向 Axis.horizontal  垂直方向 Axis.vertical
      //scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint('Page index: $currentPage'),
      controller: PageController(
        initialPage: 1, // 初始显示页面，默认值 0
        keepPage: false, // 是否记录用户滚动到哪页 默认 true
        viewportFraction: 0.85 // 滚动方向 视口比例 默认 1.0 占满 
      ),
      children: [
        Container(
          color: Colors.brown[900],
          alignment: const Alignment(0.0, 0.0),
          child: const Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: const Alignment(0.0, 0.0),
          child: const Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: const Alignment(0.0, 0.0),
          child: const Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
      
    );
  }
}
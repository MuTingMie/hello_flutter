import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    // PageViewDemo 
    // return const PageViewDemo();

    // PageViewBuilderDemo
    // return const PageViewBuilderDemo();

    // GridViewCountDemo
    // return const GridViewCountDemo();

    // GridViewExtentDemo
    return const GridViewBuilderDemo();
  }
}

// GridViewBuilderDemo
class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({ Key? key }) : super(key: key);

  Widget _gridViewItemBuilder(BuildContext context, int index) {
    return Image.network(
      posts[index].imageUrl,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridViewItemBuilder,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0
      )

      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 16.0,
      //   mainAxisSpacing: 16.0
      // )
    );  
  }
}

// GridViewExtentDemo
class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({ Key? key }) : super(key: key);

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: const Alignment(0.0, 0.0),
        child: Text(
          'item $index',
          style: const TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100.0, // 主轴最大 尺寸
      // 主轴方向 Axis.horizontal 水平方向 默认 垂直方向 Axis.vertical 
      scrollDirection: Axis.horizontal, 
      crossAxisSpacing: 16.0, // 侧轴 cell 边距
      mainAxisSpacing: 16.0, // 主轴 cell 边距
      children: _buildTiles(100),
    );
  }
}

// GridViewCountDemo
class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({ Key? key }) : super(key: key);

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: const Alignment(0.0, 0.0),
        child: Text(
          'item $index',
          style: const TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical, // 主轴方向 默认 Axis.vertical
      crossAxisCount: 2, // 侧轴 每行个数
      crossAxisSpacing: 16.0, // 侧轴 cell 边距
      mainAxisSpacing: 16.0, // 主轴 cell 边距
      children: _buildTiles(100),
    );
  }
}

// PageViewBuilderDemo
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

// PageViewDemo
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
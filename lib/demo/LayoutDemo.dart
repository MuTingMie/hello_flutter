import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const IconBadgeDemo(Icons.pool);
    // return const SizedBoxDemo();

    // return const StackDemo();

    return Column(
      // 主轴对齐
      mainAxisAlignment: MainAxisAlignment.center,
      // 交叉轴
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ConstrainedBoxDemo(),
        // AspectRatioDemo(),
        // StackDemo(),
        // SizedBoxDemo(),
        // IconBadgeDemo(Icons.heart_broken_outlined, size: 44.0),
      ]
    );

  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 200.0,
        maxWidth: 200.0
      ),
      child: Container(
        color:const Color.fromRGBO(3, 54, 255, 1.0),
      )
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0/2.0,
      child: Container(
        color:const Color.fromRGBO(3, 54, 255, 1.0),
      )
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stack 可以放 一堆小部件,当这些小部件没有设置位置时 会叠放到一起
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          // SizedBox 在不设置宽高的时候，宽高是由内容撑开的
          width: 200,
          height: 200,
          child: Container(
            // 对其方式 alignment
            alignment: const Alignment(1,1),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: const Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
          ),
        ),
        // SizedBox 作为分隔
        const SizedBox(height: 100.0),
        const IconBadgeDemo(Icons.beach_access, size: 150.0),
        const IconBadgeDemo(Icons.airplanemode_active),
        const Positioned(
          right: 10.0,
          child: IconBadgeDemo(Icons.access_alarm)
        ),
        const Positioned(
          bottom: -20,
          child: IconBadgeDemo(Icons.beach_access, size: 64.0)
        )
      ],
    );
  }
    
}

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Column 竖排 Row 横排
    return SizedBox(
      // SizedBox 在不设置宽高的时候，宽高是由内容撑开的
      width: 200,
      height: 200,
      child: Container(
        // 对其方式 alignment
        alignment: const Alignment(1,1),
        decoration: BoxDecoration(
          color:const Color.fromRGBO(3, 54, 255, 1.0),
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: const Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
      ),
    );
  }
}

class IconBadgeDemo extends StatelessWidget {
  const IconBadgeDemo(this.icon, { Key? key, this.size = 32.0 }) : super(key: key);
  // IconBadge(this.icon, {
  //   this.size = 32.0
  // })
  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: const Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
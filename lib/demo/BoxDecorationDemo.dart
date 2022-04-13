import 'package:flutter/material.dart';

class BoxDecorationDemo extends StatelessWidget {
  const BoxDecorationDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        // MainAxisAlignment 主轴
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: const Color.fromRGBO(3, 54, 255, 1.0),
            // const EdgeInsets.only(left: 24.0, right: 8.0),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 54, 255, 1.0),
              image: DecorationImage(
                image: const NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ffile02.16sucai.com%2Fd%2Ffile%2F2014%2F0827%2Fc0c92bd51bb72e6d12d5b877dce338e8.jpg'),
                alignment: Alignment.topLeft,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.indigoAccent[400]!.withOpacity(0.5), 
                  BlendMode.hardLight
                )

              ),
              /// 边框
              border: Border.all(
                color: Colors.indigoAccent.shade400,
                width: 3.0,
                style: BorderStyle.solid
              ),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent.shade400,
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   )
              // ),

              /// 圆角
              // borderRadius: const BorderRadius.all(Radius.elliptical(100,10)),
              // borderRadius: BorderRadius.zero,
              // borderRadius: BorderRadius.circular(45),

              /// 阴影
              boxShadow: const [
                BoxShadow(
                  // offset 中心点偏移
                  // offset: Offset(10, 20),
                  color: Color.fromRGBO(16, 20, 100, 0.5),
                  // 模糊程度
                  blurRadius: 10.0,
                  // 扩散程度 以中心向四周  
                  // spreadRadius: 9.0
                )
              ],

              // BoxShape.circle 会与  BorderRadius 圆角效果冲突
              // shape: BoxShape.circle
              shape: BoxShape.rectangle,

              /// 颜色渐变 
              // 径向渐变
              // gradient: const RadialGradient(
              //   colors: [
              //     Color.fromRGBO(10, 100, 200, 1.0),
              //     Color.fromRGBO(100, 200, 10, 0.5)
              //   ]
              // )
              // 线性渐变
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 10, 149, 200),
                  Color.fromARGB(125, 243, 22, 7)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight

              )

            )
          ),
        ],
      ),
    );
  }
}
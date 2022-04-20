import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({ Key? key }) : super(key: key);

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkBoxItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text('Checkbox ItemA'),
              subtitle: const Text('description'),
              secondary: const Icon(Icons.bookmark),
               // 设置图标 根据选中状态变换颜色
              selected: _checkBoxItemA,
              value: _checkBoxItemA,
              // null 为禁用 
              onChanged: (value) {
                setState(() {
                  _checkBoxItemA = value ?? false;
                });
                
              }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _checkBoxItemA,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxItemA = value ?? false;
                    });
                    
                  }
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
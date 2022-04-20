import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget textButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(//FlatButton 弃用  使用 TextButton
          child: const Text('TextButton'),
          // onPressed 为 null,按钮是禁用状态
          onPressed: () {debugPrint('TextButton pressed');},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            splashFactory: InkSplash.splashFactory
          ),
        ),
        const SizedBox(width: 10.0),
        TextButton(//FlatButton
          child: const Text('DisabledButton'),
          // onPressed 为 null,按钮是禁用状态
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            splashFactory: InkSplash.splashFactory
          ),
        ),
        const SizedBox(width: 10.0),
        TextButton.icon(//FlatButton
          icon: const Icon(Icons.add),
          label: const Text('TextButton'),
          // onPressed 为 null,按钮是禁用状态
          onPressed: () {debugPrint('TextButton pressed');},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            splashFactory: InkSplash.splashFactory,
                    
          )
        )
      ]
    );

    final Widget floatingActionButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Text('floatingActionButton'),//Icon(Icons.add),
        ),
        const SizedBox(width: 10.0),
        FloatingActionButton.extended(
          onPressed: (){},
          icon: const Icon(Icons.add),
          label: const Text('floatingActionButton'),
          elevation: 2.0,
        ),
      ]
    );

    final Widget elevatedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton( // RaisedButton
          child: const Text('ElevatedButton'),
          onPressed: () {debugPrint('ElevatedButton pressed');},
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
          //   foregroundColor: MaterialStateProperty.all(Colors.white),
          //   splashFactory: InkSplash.splashFactory
          // ),
        ),
        const SizedBox(width: 10.0),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('ElevatedButton.icon'),
          onPressed: () {debugPrint('ElevatedButton.icon pressed');},
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
          //   foregroundColor: MaterialStateProperty.all(Colors.white),
          //   splashFactory: InkSplash.splashFactory
          // ), 
        )
      ]
    );

    final Widget outlinedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton( // OutlinedButton
          child: const Text('OutlinedButton'),
          onPressed: () {debugPrint('OutlinedButton pressed');},
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
          //   foregroundColor: MaterialStateProperty.all(Colors.white),
          //   splashFactory: InkSplash.splashFactory
          // ),
        ),
        const SizedBox(width: 10.0),
        OutlinedButton.icon(
          onPressed: () {debugPrint('OutlinedButton.icon pressed');}, 
          icon: const Icon(Icons.add_alarm), 
          label: const Text("OutlinedButton.icon")
        )
      ]
    );

    /// 按钮容器
    // Container 有固定宽度的按钮
    // Expanded 占满可用宽度的按钮
    // ButtonBar 带边距并排显示的按钮
    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(//Container
          width: 130.0,
          child: OutlinedButton(//FlatButton
            child: const Text('fixedWidthButton'),
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(color: Colors.black)),
            ),
            // onPressed 为 null,按钮是禁用状态
            onPressed: () {debugPrint('Button pressed');},
            
          )
        )
      ]
    );

    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: OutlinedButton(//FlatButton
            child: const Text('Expanded'),
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(color: Colors.black)),
            ),
            // onPressed 为 null,按钮是禁用状态
            onPressed: () {debugPrint('Button pressed');},
            
          )
        ),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 2,
          child: OutlinedButton(//FlatButton
            child: const Text('Expanded'),
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(color: Colors.black)),
            ),
            // onPressed 为 null,按钮是禁用状态
            onPressed: () {debugPrint('Button pressed');},
            
          )
        )
      ]
    );

    final Widget buttonBar = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonBar(
          children: [
            TextButton(//FlatButton
              child: const Text('TextButton'),
              // onPressed 为 null,按钮是禁用状态
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                splashFactory: InkSplash.splashFactory
              ),
            ),
            TextButton.icon(//FlatButton
              icon: const Icon(Icons.add),
              label: const Text('TextButton'),
              // onPressed 为 null,按钮是禁用状态
              onPressed: () {debugPrint('TextButton pressed');},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                splashFactory: InkSplash.splashFactory
              ),
            )
          ]
        )
      ]
    );


    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textButtonDemo,
            const SizedBox(height: 10.0),
            floatingActionButtonDemo,
            const SizedBox(height: 10.0),
            elevatedButtonDemo,
            const SizedBox(height: 10.0),
            outlinedButtonDemo,
            const SizedBox(height: 10.0),
            fixedWidthButton,
            const SizedBox(height: 10.0),
            expandedButton,
            const SizedBox(height: 10.0),
            buttonBar
          ],
        ),
      ),
    );
  }
}
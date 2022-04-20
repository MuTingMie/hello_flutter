import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: const Text('add'),//Icon(Icons.add),
      elevation: 0.0,
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: const Icon(Icons.add),
      label: const Text('add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButtonExtended,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 80),
        shape: const CircularNotchedRectangle(),
      ),
    );
  }
}
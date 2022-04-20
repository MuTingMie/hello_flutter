import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({ Key? key }) : super(key: key);

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
    ?.showBottomSheet((BuildContext buildContext) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: const[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0,),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text('Fix you - Coldplay', textAlign: TextAlign.right)
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
      context: context, 
      builder: (BuildContext buildContext) {
        return SizedBox(//Container
          height: 200.0,
          child: Column(
            children: [
              ListTile(
                title: const Text('OptionA'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: const Text('OptionB'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: const Text('OptionC'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              )
            ]
          ),
        );
      }
    );

    print(option);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: const Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text('Open BottomSheet'),
                  onPressed: _openBottomSheet, 
                ),
                TextButton(
                  child: const Text('Modal BottomSheet'),
                  onPressed: _openModalBottomSheet, 
                )
              ],
            )
          ],
        )
      )   
    );
  }
}
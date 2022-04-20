import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  Ok,
  Cancel
}

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({ Key? key }) : super(key: key);

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context, 
      barrierDismissible: false, // 强制必须选择才能关闭
      //barrierColor: Colors.red,
      //barrierLabel: 'barrierLabel',
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog'),
          content: const Text('Are you sure about this?'),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: (){
                Navigator.pop(context, Action.Cancel);
              }
            ),
            TextButton(
              child: const Text('Ok'),
              onPressed: (){
                Navigator.pop(context, Action.Ok);
              }
            )
          ],
        );
      }
    );

    switch(action) {
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your choice is: $_choice'),
            const SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('OpenAlertDialog'),
                  onPressed: _openAlertDialog, 
                )
              ],
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.format_list_numbered),
        onPressed: _openAlertDialog,
      ),
    );
  }
}
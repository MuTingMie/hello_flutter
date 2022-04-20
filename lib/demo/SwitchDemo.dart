import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({ Key? key }) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              value: _switchItemA, 
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: const Text('SwitchItemA'),
              subtitle: const Text('description'),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_switchItemA ? '😊' : '😭', style: const TextStyle(fontSize: 32.0)),
                Switch(
                  value: _switchItemA, 
                  onChanged: (value) {
                    setState(() {
                      _switchItemA = value;
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
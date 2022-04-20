import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({ Key? key }) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  void _radioGroupAOnChange(int? value) {
    setState(() {
      _radioGroupA = value ?? 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('RadioGroupValue: $_radioGroupA'),
            const SizedBox(height: 32.0,),
            RadioListTile(
              value: 0, 
              selected: _radioGroupA == 0,
              groupValue: _radioGroupA, 
              onChanged: _radioGroupAOnChange,
              title: const Text('OptionA'),
              subtitle: const Text('description'),
              secondary: const Icon(Icons.filter_1),
            ),
            RadioListTile(
              value: 1, 
              selected: _radioGroupA == 1,
              groupValue: _radioGroupA, 
              onChanged: _radioGroupAOnChange,
              title: const Text('OptionB'),
              subtitle: const Text('description'),
              secondary: const Icon(Icons.filter_2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 0, 
                  groupValue: _radioGroupA, 
                  onChanged: _radioGroupAOnChange
                ),
                Radio(
                  value: 1, 
                  groupValue: _radioGroupA, 
                  //onChanged: _radioGroupAOnChange,
                  onChanged: (int? value) {
                    setState(() {
                      _radioGroupA = value ?? 0;
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
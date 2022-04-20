import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({ Key? key }) : super(key: key);

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliderDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: _sliderItemA, 
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).primaryColor,
                  inactiveColor: Theme.of(context).primaryColor.withOpacity(0.3),
                  min: 0.0,
                  max: 100.0,
                  divisions: 10,
                  label: '${_sliderItemA.toInt()}',
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Text('SliderValue: $_sliderItemA')
          ],
        ),
      ),
    );
  }
}
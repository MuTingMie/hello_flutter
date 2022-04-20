import 'package:flutter/material.dart';
import 'ButtonDemo.dart';
import 'FloatingActionButtonDemo.dart';
import 'PopupMenuButtonDemo.dart';
import 'FormDemo.dart';
import 'CheckBoxDemo.dart';
import 'RadioDemo.dart';
import 'SwitchDemo.dart';
import 'SliderDemo.dart';
import 'DateTimeDemo.dart';
import 'SimpleDialogDemo.dart';
import 'AlertDialogDemo.dart';
import 'BottomSheetDemo.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: const [
          ListItem('BottomSheetDemo', BottomSheetDemo()),
          ListItem('AlertDialogDemo', AlertDialogDemo()),
          ListItem('SimpleDialogDemo', SimpleDialogDemo()),
          ListItem('DateTimeDemo', DateTimeDemo()),
          ListItem('SliderDemo', SliderDemo()),
          ListItem('SwitchDemo', SwitchDemo()),
          ListItem('RadioDemo', RadioDemo()),
          ListItem('CheckboxDemo', CheckboxDemo()),
          ListItem('FormDemo', FormDemo()),
          ListItem('PopupMenuButton', PopupMenuButtonDemo()),
          ListItem('Button', ButtonDemo()),
          ListItem('FloatingActionButton', FloatingActionButtonDemo())
        ],
      ),
    );
  }
}



class WidgetDemo extends StatelessWidget {
  const WidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WidgetDemo'),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}



class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  const ListItem(this.title, this.page, {Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page)
        );
      }
    );
  }
}
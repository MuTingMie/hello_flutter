import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  const DateTimeDemo({ Key? key }) : super(key: key);

  @override
  State<DateTimeDemo> createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = const TimeOfDay(hour: 9, minute: 30);

  // _selectDate() async {
  //   final DateTime? date = await showDatePicker(
  //     context: context, 
  //     initialDate: selectedDate, 
  //     firstDate: DateTime(1900), 
  //     lastDate: DateTime(2100)
  //   );

  //   if (date == null) return;
  //   setState(() {
  //     selectedDate = date;
  //   });
  // }

  Future<void> _selectDate() async {
    final DateTime? date = await showDatePicker(
      context: context, 
      initialDate: selectedDate, 
      firstDate: DateTime(1900), 
      lastDate: DateTime(2100)
    );

    if (date == null) return;
    setState(() {
      selectedDate = date;
    });
  }

  Future<void> _selectTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context, 
      initialTime: selectedTime
    );

    if (time == null) return;
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DateTimeDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: [
                      Text(DateFormat.yMd().format(selectedDate)),
                      const Icon(Icons.arrow_drop_down)
                    ]
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: [
                      Text(selectedTime.format(context)),
                      const Icon(Icons.arrow_drop_down)
                    ]
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk mengambil tanggal
 DateTime selectedDate = DateTime.now();
  
  // Initial SelectDate FLutter
  Future<Null> _selectDate(BuildContext context) async {
  // Initial DateTime Final Picked
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2015, 8),
    lastDate: DateTime(2101));
  if (picked != null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(height: 20.0,),
            ElevatedButton(
            onPressed: () => {
              _selectDate(context),
              print(selectedDate.day + selectedDate.month +
              selectedDate.year )
            },
            child: Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
      );
  }
}
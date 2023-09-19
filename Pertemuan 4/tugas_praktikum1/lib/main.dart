import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  double inputValue = 0.0;
  String selectedUnit = 'Kelvin';
  double result = 0.0;

  var listItem = [
  "Kelvin",
  "Reamur"
  ];

  void convertTemperature() {
    setState(() {
      if (selectedUnit == 'Kelvin') {
        result = inputValue - 273.15;
      } else if (selectedUnit == 'Reamur') {
        result = inputValue * 4 / 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konverter Suhu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Masukkan Suhu dalam $selectedUnit:',
              style: TextStyle(fontSize: 18.0),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (text) {
                      inputValue = double.tryParse(text) ?? 0.0;
                    },
                  ),
                ),
                DropdownButton<String>(
                  value: selectedUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedUnit = newValue!;
                    });
                    convertTemperature(); //Untuk merubah suhu tanpa harus memencet tombol konversi
                  },
                  items: listItem
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Hasil",style: TextStyle(fontSize: 20),),
                  Text(
                  result.toStringAsFixed(1),
                  style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            // SizedBox(height: 20.0),
            // ElevatedButton(
            //   onPressed: () {
            //     convertTemperature();
            //   },
            //   child: Text('Konversi'),
            // ),
          ],
        ),
      ),
    );
  }
}
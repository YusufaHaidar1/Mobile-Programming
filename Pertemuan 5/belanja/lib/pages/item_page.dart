import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Item args = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title : const Text("Shopping List")
      ),
    body: Container(
      alignment: Alignment.center,
      child: Column(
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(),
              child: Image.network("${args.gambar}")
              ),
            Text("${args.name}", style: TextStyle(fontSize: 20)),
            Text("Harga : ${args.price}", style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              elevation: 4,
              ),
              child: const Text('Beli Sekarang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            )
          ]
          ),
    ),
    );
  }
}
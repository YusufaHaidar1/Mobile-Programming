import 'package:flutter/material.dart';
import '../models/item.dart';

class EntryForm extends StatefulWidget {
  final Item item;
  EntryForm(this.item);
    @override
    EntryFormState createState() => EntryFormState(this.item);
}

//Class controller
class EntryFormState extends State<EntryForm> {
  Item item;
  EntryFormState(this.item);
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //Kondisi apabila Item tidak null / kosong
    if (item != null) {
    nameController.text = item.name;
    priceController.text = item.price.toString();
    }

  //rubah
  return Scaffold(
    appBar: AppBar(
      title: item == null ? Text('Tambah') : Text('Ubah'),
      leading: Icon(Icons.keyboard_arrow_left),
    ),
    body: Padding(
      padding: EdgeInsets.only(top: 15.0, left:10.0, right:10.0),
      child: ListView(
        children: <Widget> [
        // Input Nama Barang
        Padding (
          padding: EdgeInsets.only(top:20.0, bottom:20.0),
          child: TextField(
            controller: nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Nama Barang',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (value) {
            //
            },
          ),
        ),
        // Input Harga Barang
        Padding (
          padding: EdgeInsets.only(top:20.0, bottom:20.0),
          child: TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Harga',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (value) {
            //
            },
          ),
        ),
        // Pembuatan Button
        Padding (
          padding: EdgeInsets.only(top:20.0, bottom:20.0),
          child: Row(
            children: <Widget> [
            // Tombol Save
            Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Text('Save', textScaleFactor: 1.5, style: TextStyle(color: Colors.lightBlue),),
              onPressed: () {
                if (item == null) {
                // Menambah Data
                item = Item(nameController.text, int.parse(priceController.text));
                } else {
                // Mengubah Data
                item.name = nameController.text;
                item.price = int.parse(priceController.text);
                }
                // Return page sebelumnya dengan Objek Item
                Navigator.pop(context, item);
              },
            ),
            ),
            Container(width: 5.0,),
            // Tombol Cancel
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text('Cancel', textScaleFactor: 1.5, style: TextStyle(color: Colors.lightBlue),),
                onPressed: () {
                Navigator.pop(context);
              },
              ),
            ),
            ],
          ),
        ),
      ],
      ),
    )
 );
 }
}
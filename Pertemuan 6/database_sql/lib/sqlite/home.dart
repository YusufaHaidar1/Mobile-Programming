import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dbhelper.dart';
import 'entryform.dart';
import '../models/item.dart';

//pendukung program asinkron
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item>? itemList;
  @override
  Widget build(BuildContext context) {
    itemList ??= <Item>[];
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: Column(
        children : [
          Expanded(
            child: createListView(),),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Tambah Item"),
                onPressed: () async {
                  Item itema = Item('', 0);
                  var item = await navigateToEntryForm(context, itema);
                  if (item != null) {
                  //TODO 2 Panggil Fungsi untuk Insert ke DB
                    int result = await dbHelper.insert(item);
                    if (result > 0) {
                    updateListView();
                    }
                  }
                },
              ),
            ),
          ),
        ]
      ),
    );
  }

  Future<Item> navigateToEntryForm(BuildContext context, Item? item) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return EntryForm(item!);
        }
      )
    );
  return result;
  }

  ListView createListView() {
    TextStyle? textStyle = Theme.of(context).textTheme.headlineSmall;
    return ListView.builder(
      itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          var itemList2 = this.itemList;
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.ad_units),
              ),
              title: Text(this.itemList![index].name, style: textStyle,),
              subtitle: Text(itemList2![index].price.toString()),
              trailing: GestureDetector(
                child: Icon(Icons.delete),
                onTap: ()async {
                //TODO 3 Panggil Fungsi untuk Delete dari DB berdasarkan Item
                },
              ),
              onTap: () async {
                var item = await navigateToEntryForm(context, this.itemList![index]);
                //TODO 4 Panggil Fungsi untuk Edit data
              },
            ),
          );
        },
    );
  }
  //Update List Item
  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      //TODO 1 Select data dari DB
      Future<List<Item>> itemListFuture = dbHelper.getItemList();
      itemListFuture.then((itemList) {
        setState(() {
        this.itemList = itemList;
        this.count = itemList.length;
        });
      });
    });
    }
}
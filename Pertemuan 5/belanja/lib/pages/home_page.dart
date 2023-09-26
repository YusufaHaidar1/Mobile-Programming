import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, gambar: "https://media.monotaro.id/mid01/full/Perlengkapan%20Dapur%20%26%20Horeka/Makanan/Bahan%20Masak/Gulaku%20Gula%20Pasir%20Premium%20Putih/80P101558288-34.jpg"),
    Item(name: 'Salt', price: 2000, gambar: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//94/MTA-50563821/no-brand_no-brand_full01.jpg"),
    Item(name: 'Coffee', price: 45000, gambar: "https://images.tokopedia.net/img/cache/900/VqbcmM/2022/5/20/f2bdf87a-48a5-46a9-b9c3-31009dacd915.jpg")
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : const Text("Shopping List")
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}


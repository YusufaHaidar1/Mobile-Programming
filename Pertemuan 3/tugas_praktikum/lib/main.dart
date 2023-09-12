import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Tugas Praktikum"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("BERITA TERBARU", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("ESPORT NEWS HARI INI", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                image: NetworkImage('https://images.contentstack.io/v3/assets/bltb730eada072bdbf4/blt0f23884855beb301/64c1de390c8acef375030160/CH23_CoverImage.jpg?width=2472&height=1390'),
                fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.purpleAccent,
                  width: 0.5,
                ),
              ),
              height: 300,
              width: 400,
              margin: EdgeInsets.only(left: 20, right: 20),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purpleAccent)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Anything You Need to Know about EG", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 20, right: 20),
            ),
            Container(
              color: Colors.purpleAccent,
              alignment: Alignment.centerLeft,
              child: Text("\tView More ->", style: TextStyle(fontWeight: FontWeight.bold)),
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 20, right: 20),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 100,
                  width: 152.7,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent)
                  ),
                  child: Image.network('https://images.contentstack.io/v3/assets/bltb730eada072bdbf4/blt44454a513589fbde/64c29614570512e1c0dd6bff/VCT23_Champions_WPEArticle.jpg?width=2472&height=1390',
                                        fit: BoxFit.cover,
                                      ),  
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent)
                  ),
                  margin: const EdgeInsets.only(right: 20),
                  height: 100,
                  width: 200,
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    maxWidth: 200.0,
                  ),
                child: Text("Watch, Play, and Collect, during VCT 2023", style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent)
              ),
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: Text("\tLos Angeles, Jul 29 2023"),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 100,
                  width: 152.7,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Image.network('https://images.contentstack.io/v3/assets/bltb730eada072bdbf4/bltcd97590cc1bb7a83/64d55fd5fe29dd9d4130f4fd/VCT_OffSeason_2022_Header.jpg?width=2472&height=1390',
                                        fit: BoxFit.cover,
                                      ),  
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                  ),
                  margin: const EdgeInsets.only(right: 20),
                  height: 100,
                  width: 280,
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    maxWidth: 200.0,
                  ),
                child: Text("Announcement VCT//Off Season", style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: Text("\tLos Angeles, Aug 11 2023"),
            ),
          ],
        ),
      ),
    );
  }
}

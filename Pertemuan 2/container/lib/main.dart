import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//H. Property Decoration
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Decoration")),
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/Persona 5.jpg'),
            fit: BoxFit.fitWidth,
          ),
          border: Border.all(
            color: Colors.black,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
          ),
        height: 200,
        width: 300,
        margin: const EdgeInsets.all(20),
      )
      )
    );
  }
}

//G. Property Transform
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Transform")),
//       body: Container(
//         decoration: BoxDecoration(
//           image: const DecorationImage(
//             image: AssetImage(
//               'assets/images/Persona 5.jpg'),
//             fit: BoxFit.fitWidth,
//           ),
//           border: Border.all(
//             color: Colors.black,
//             width: 8,
//           ),
//           ),
//         height: 200,
//         width: 300,
//         margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
//         transform: Matrix4.rotationZ(-0.1),
//       )
//       )
//     );
//   }
// }

//F. Property Padding
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Padding")),
//       body: Container(
//         padding: EdgeInsets.only(left: 20),
//         margin: EdgeInsets.all(20),
//         height: 300,
//         width: 300,
//         alignment: Alignment.topLeft,
//         color: Colors.blueGrey,
//       child: Text(
//         'Semangat Belajar Wahai Diriku',
//         style: TextStyle(fontSize: 20, color:Colors.white),
//         ))),
//     );
//   }
// }

//E. Property Margin
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Margin")),
//       body: Container(
//         margin: EdgeInsets.all(50),
//         height: 300,
//         width: 300,
//         alignment: Alignment.topLeft,
//         color: Colors.blueGrey,
//       child: Text(
//         'Semangat Belajar Wahai Diriku',
//         style: TextStyle(fontSize: 20, color:Colors.white),
//         ))),
//     );
//   }
// }

//D. Property Height & Width
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Height dan Width")),
//       body: Container(
//         margin: EdgeInsets.all(50),
//         height: 300,
//         width: 300,
//         alignment: Alignment.center,
//         color: Colors.blueGrey,
//       child: Text(
//         'Semangat Belajar Wahai Diriku',
//         style: TextStyle(fontSize: 20, color:Colors.white),
//         ))),
//     );
//   }
// }

//C. Property Color
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Color")),
//       body: Container(
//         margin: EdgeInsets.all(50),
//         height: 200,
//         width: 200,
//         alignment: Alignment.center,
//         color: Colors.amber[900],
//       child: Text(
//         'Semangat Belajar Wahai Yusufa Haidar',
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ))),
//     );
//   }
// }

//B. Property Alignment
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Aligment")),
//       body: Container(
//         alignment: Alignment.bottomCenter,
//         child: Text(
//           'Semangat Belajar Wahai Yusufa Haidar',
//           style: TextStyle(
//           fontSize: 20,
//           ),
//         ))),
//     );
//   }
// }

//A. Property Child
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Button")),
//         body: Container(
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Colors.white,
//               backgroundColor: Colors.red,
//             ),
//             onPressed: (){},
//             child: Text(
//             "Button",
//             style: TextStyle(fontSize: 20)
//             ),
//           ))),
//     );
//   }
// }


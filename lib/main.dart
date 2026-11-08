import 'package:classico_as/appRoute.dart';
import 'package:classico_as/details_page.dart';
import 'package:classico_as/home_page.dart';
import 'package:classico_as/settings_page.dart';
import 'package:classico_as/wallpaper_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      // home: WallpaperPage()
      initialRoute: AppRoutes.pageProductListRoute,
      routes: AppRoutes.mRoutes
    );
  }
}

// class HomePage extends StatelessWidget {
//   String imageUrl = "https://m.media-amazon.com/images/I/61sKdf6GTnL._AC_UF1000,1000_QL80_.jpg";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: TextField(
//           keyboardType: .emailAddress,
//           decoration: InputDecoration(
//
//           ),
//         ),
//       )
//       );
//   }
// }



// InkWell and Gesture Detector
// GestureDetector(
// onTap: () {
// print("Image tapped");
// },
// child: Icon(Icons.eighteen_mp, size: 100))


// Profile Card
// SizedBox(
// width: 350,
// height: 600,
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: .circular(12)
// ),
// elevation: 5,
// child: Padding(
// padding: const EdgeInsets.all(12.0),
// child: Column(
// children: [
// Expanded(
// child: Container(
// width: 300,
// decoration: BoxDecoration(
// borderRadius: .circular(12),
// image: DecorationImage(image: NetworkImage(imageUrl), fit: .cover)
// ),
// ),
// ),
// SizedBox(height: 21),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 12.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start, // Aligns all children to the left
// children: [
// Row(
// children: [
// Text("Tom Cruise", style: TextStyle(fontSize: 22, fontWeight: .bold)),
// SizedBox(width: 20),
// Image.asset("assets/icons/ic_coding.png", width: 30, height: 30),
// ],
// ),
// Text("I am the hollywood superstar and i live in america", style: TextStyle(fontSize: 12, fontWeight: .normal)),
// SizedBox(height: 20),
// Row(
// children: [
// Image.asset("assets/icons/ic_home.png", width: 20, height: 20),
// SizedBox(width: 10),
// Text("123", style: TextStyle(fontSize: 12, fontWeight: .normal)),
// Spacer(flex: 1),
// Image.asset("assets/icons/ic_coding.png", width: 20, height: 20),
// SizedBox(width: 10),
// Text("4213", style: TextStyle(fontSize: 12, fontWeight: .normal)),
// Spacer(flex: 3),
// Container(
// padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
// decoration: BoxDecoration(
// borderRadius: .circular(50),
// gradient: LinearGradient(colors: [
// Colors.grey.shade200,
// Colors.grey.shade400
// ],
// begin: .topCenter,
// end: .bottomCenter)
// ),
// child: Text("Follow +", style: TextStyle(fontSize: 16, fontWeight: .normal))
// )
//
// ],
// ),
// SizedBox(height: 5)
//
// ],
// ),
// )
// ],
// ),
// ),
// ),
// )


// Circular Avatar
// CircleAvatar(
// radius: 100,
// backgroundImage: NetworkImage('https://m.media-amazon.com/images/I/61sKdf6GTnL._AC_UF1000,1000_QL80_.jpg')
// )


// Image Asset
// Image.asset("assets/icons/ic_home.png", width: 50, height: 50)

//Stack with alignment

// Stack(
// children: [
// Center(
// child: Container(
// width: 300,
// height: 300,
// color: Colors.orange,
// ),
// ),
// Align(
// alignment: .center,
// child: Container(
// width: 200,
// height: 200,
// color: Colors.yellow,
// ),
// ),
// Positioned(
// top: 10,
// right: 10,
// child: Container(
// width: 100,
// height: 100,
// color: Colors.blue,
// ),
// )
// ],
// )

//Expanded and flexible
// Row(
// children: [
// Expanded(
// flex: 2,
// child: Container(
// height: 100,
// color: Colors.yellow,
// ),
// ),
// Expanded(
// flex: 2,
// child: Container(
// height: 100,
// color: Colors.green,
// ),
// ),
// Expanded(
// flex: 2,
// child: Container(
// height: 100,
// color: Colors.lightBlueAccent,
// ),
// )
// ]
// )

// // Wrap
// Wrap(
// direction: .horizontal,
// spacing: 20,
// runSpacing: 12,
// alignment: .spaceAround,
// children: [
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// ),
//
// Container(
// width: 50,
// height: 100,
// color: Colors.green,
// ),
//
// Container(
// width: 50,
// height: 100,
// color: Colors.amber
// ),
//
// Container(
// width: 50,
// height: 100,
// color: Colors.amber
// ),
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// ),
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// ),
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// ),
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// ),
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// ),
// Container(
// width: 50,
// height: 100,
// color: Colors.blue,
// )
// ],
// )

// Row Component
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 2.0),
// child: Text("Hello Sanjeev Pant")
// ),
// Container(
// width: 100,
// height: 100,
// color: Colors.blue
// )
// ],
// )


// Card Component
// Align(
// alignment: .center,
// child: SizedBox(
// width: double.infinity,
// height: 100,
// child: Card(
// margin: .symmetric(horizontal: 10),
// elevation: 3,
// shadowColor: Colors.yellow,
// child: Center(child: Text("Hello World !!")),
// ),
// ),
// )

// Container Shadow
// Container(
// width: double.infinity,
// height: double.infinity,
// padding: .symmetric(horizontal: 12),
// decoration: BoxDecoration(
// boxShadow: [BoxShadow(
// color: Colors.yellow
// )]
// color: Colors.orange,
// borderRadius: BorderRadius.circular(21),
// gradient: LinearGradient(colors: [
//   Color(0xffD8DF4A),
//   Colors.deepOrange,
//   Colors.deepPurple,
//   Colors.yellow
// ],
// begin: .topCenter,
//  end: .bottomCenter,
// focalRadius: 400,
// border: Border.all(
//   width: 10,
//   color: Colors.blue.withAlpha(100),
//   strokeAlign: BorderSide.strokeAlignOutside
// )
// ),
// child: Icon(Icons.ac_unit, size: 100, color: Colors.white)
// // Text("Hello World!!", style: GoogleFonts.poppins(
// //   fontSize: 41
// // )),
// )


// Rich Text
// RichText(text: TextSpan(
// text: "Hello ",
// style: GoogleFonts.poppins(
// fontSize: 24,
// fontStyle: .italic,
// color: Colors.black
// ),
// children: [
// TextSpan(text: "World !!", style: GoogleFonts.cedarvilleCursive()),
// TextSpan(text: "Sanjeev !!", style: GoogleFonts.kablammo(
// fontSize: 12,
// color: Colors.green
// ))
// ]
// ))

// ---- Text Widget
// Text("Hello World Hello WorldHello World Hello WorldHello World Hello WorldHello World Hello WorldHello World Hello WorldHello World Hello WorldHello World Hello World",
// style: GoogleFonts.cedarvilleCursive (
// fontSize: 24,
// // fontWeight: .bold,
// color: Colors.red,
// // fontFamily: "poppins"
// // backgroundColor: Colors.black,
// // decoration: .lineThrough,
// //   decorationColor: Colors.red,
// // letterSpacing: 1,
// // wordSpacing: 12),
// ), textAlign: .justify)
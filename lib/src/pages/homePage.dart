import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doya_app/src/components/headerComponent.dart.dart';
import 'package:doya_app/src/components/doyaHomeCatagory.dart';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: HexColor('#2c3e50'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderComponent(),
            SizedBox(height: 5),
            DoyaHomeCatagory(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade300,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: CurvedNavigationBar(
          color: HexColor('#2c3e50'),
          buttonBackgroundColor: HexColor('#2c3e50'),
          backgroundColor: Colors.white,
          animationDuration: Duration(microseconds: 100),
          items: [
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.menu, size: 30, color: Colors.white),
            Icon(Icons.dashboard, size: 30, color: Colors.white),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
      ),
    );
  }
}

// Container(
//         decoration: BoxDecoration(
//           color: Colors.yellow,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.blue.shade300,
//               blurRadius: 10,
//               spreadRadius: 5,
//             ),
//           ],
//         ),
//         child: CurvedNavigationBar(
//           index: 0,
//           color: HexColor('#2c3e50'),
//           buttonBackgroundColor: HexColor('#2c3e50'),
//           backgroundColor: Colors.white,
//           animationDuration: Duration(microseconds: 100),
//           items: [
//             Icon(Icons.add, size: 30, color: Colors.white),
//             Icon(Icons.list, size: 30, color: Colors.white),
//             Icon(EvaIcons.heart, size: 30, color: Colors.white),
//           ],
//           onTap: (index) {},
//         ),
//       ),
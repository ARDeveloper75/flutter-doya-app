import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doya_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class AboutDuaPage extends StatefulWidget {
  final Map<String, dynamic> doya;
  AboutDuaPage({required this.doya});

  @override
  _AboutDuaPageState createState() => _AboutDuaPageState();
}

class _AboutDuaPageState extends State<AboutDuaPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: customDrawer(),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.openEndDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
          child: Icon(
            Icons.format_align_center,
            color: Colors.white,
            size: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              EvaIcons.search,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/images/frame.png',
                  scale: 1,
                ),
                Positioned(
                  top: 90,
                  left: 60,
                  child: Container(
                    // color: HexColor('#2c3e50'),
                    child: KText(
                      text: (widget.doya['title']),
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'Hind Siliguri Bold',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  right: 10,
                  child: Container(
                    width: 400,
                    child: Text(
                      (widget.doya['about']),
                      style: TextStyle(
                        fontSize: 17,
                        color: HexColor('#2c3e50'),
                        fontFamily: 'Hind Siliguri Bold',
                      ),
                      maxLines: 10,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 130,
                      left: 20,
                      right: 20,
                    ),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 20,
                  right: 10,
                  child: KText(
                    text: (widget.doya['bangla']),
                    fontSize: 18,
                    maxLines: 5,
                    color: HexColor('#2c3e50'),
                    fontFamily: 'Hind Siliguri Bold',
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 20,
                  right: 10,
                  child: KText(
                    text: (widget.doya['arabic']),
                    fontSize: 20,
                    maxLines: 5,
                    color: HexColor('#2c3e50'),
                    fontFamily: 'Hind Siliguri Bold',
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 20,
                  right: 10,
                  child: Container(
                    width: 400,
                    child: Text(
                      (widget.doya['meaning']),
                      style: TextStyle(
                          fontSize: 18,
                          color: HexColor('#2c3e50'),
                          fontFamily: 'Hind Siliguri Regular'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 310,
                      left: 20,
                      right: 20,
                    ),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 340,
                  left: 20,
                  right: 10,
                  child: Container(
                    width: 400,
                    child: Text(
                      (widget.doya['question']),
                      style: TextStyle(
                          fontSize: 25,
                          color: HexColor('#2c3e50'),
                          fontFamily: 'Hind Siliguri Bold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 375,
                      left: 50,
                      right: 50,
                    ),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 390,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: 400,
                    child: Text(
                      (widget.doya['description']),
                      style: TextStyle(
                          fontSize: 18,
                          color: HexColor('#2c3e50'),
                          fontFamily: 'Hind Siliguri Regular'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
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

  Widget customDrawer() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 330,
              color: HexColor(
                '#2c3e50',
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset('assets/images/needDoya.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

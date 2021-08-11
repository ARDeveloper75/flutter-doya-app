import 'dart:ui';

import 'package:doya_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: Get.width,
      decoration: BoxDecoration(
        color: HexColor('#2c3e50'),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade300,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
              top: 50,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300,
                      blurRadius: 25,
                      spreadRadius: .5,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  color: Colors.white70,
                  height: 70,
                ),
              )),
          Positioned(
              top: 60,
              left: 110,
              child: KText(
                text: 'বাংলা ইসলামিক দোয়া',
                color: Colors.white70,
                fontSize: 20,
              )),
          Positioned(
            bottom: 25,
            left: 25,
            child: Container(
              height: 54,
              width: 200,
              decoration: BoxDecoration(
                color: HexColor('#2c3e50'),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300,
                    blurRadius: 15,
                    spreadRadius: .5,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'এখানে খুঁজুন',
                  hintStyle: TextStyle(
                    color: Colors.white54,
                    fontFamily: 'Hind Siliguri Regular',
                  ),
                  prefixIcon: Icon(
                    EvaIcons.searchOutline,
                    color: Colors.white54,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 1,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pray_namaz.png',
                  scale: 1,
                  height: 170,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

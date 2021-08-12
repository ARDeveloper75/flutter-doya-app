import 'package:doya_app/src/pages/homePage.dart';
import 'package:doya_app/src/pages/needDoyaPage.dart';
import 'package:doya_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

class AttentionDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: Get.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
                color: HexColor('#2c3e50'),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#34495e'),
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: KText(
                        text: 'বিসমিল্লাহির রাহ মানির রাহিম',
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Hind Siliguri Bold',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/quran.png',
              height: 130,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.shade300,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                    color: HexColor('#2c3e50'),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'দোয়া কবুল হবার প্রধান শর্ত হলো এককভাবে আল্লাহর কাছে চাওয়া এবং তাঁর সাথে কাউকে শরিক না করা। যে ব্যক্তি প্রত্যহ সকাল ও সন্ধ্যায় আল্লাহ্‌কে বিভিন্ন দোয়ার মাধ্যমে স্মরণ করবে, কোন কিছুই তার ক্ষতি করতে পারবে না। কোরান ও হাদিসের আলোকে দৈনন্দিন দোয়ার গুরুত্ব ও তাৎপর্য অনেক, মানব জীবনের ইহকালীন ও পরলৌকিক যাবতীয় কল্যাণ এতে বিধৃত হয়েছে। দৈনন্দিন আমলের মধ্যে দোয়ার গুরুত্ব অপরিসীম। চলুন জেনে নেয়া যাক কোরান ও হাদিসের আলোকে কিছু দোয়ার বিষয়ে।',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'Hind Siliguri Regular'),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('#34495e'),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: TextButton.icon(
                  onPressed: () {
                    Get.to(NeedDoyaPage());
                  },
                  label: KText(
                    text: 'পরবর্তী পেজে যান',
                    fontSize: 25,
                  ),
                  icon: Icon(
                    EvaIcons.arrowForwardOutline,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade300,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('#34495e'),
                ),
                child: TextButton.icon(
                  onPressed: () {
                    Get.to(HomePage());
                  },
                  icon: Icon(
                    EvaIcons.homeOutline,
                    size: 22,
                    color: Colors.white,
                  ),
                  label: KText(
                    text: 'হোম পেজে যান',
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: HexColor('#2c3e50'),
    );
  }
}

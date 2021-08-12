
import 'package:doya_app/src/pages/attention.dart';
import 'package:doya_app/src/pages/needDoyaPage.dart';
import 'package:doya_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

class DoyaHomeCatagory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GridView.count(
            primary: true,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: .70,
            shrinkWrap: true,
            children: [
              InkWell(
                onTap: () {
                  Get.to(AttentionDua());
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: HexColor('#2c3e50'),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade300,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Image.asset(
                            'assets/images/needDoya.png',
                            height: 90,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: KText(
                              text: 'প্রয়োজনীয় দোয়া',
                              fontFamily: 'Hind Siliguri Bold',
                              maxLines: 2,
                              fontSize: 25,
                              color: Colors.white,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  print('2');
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: HexColor('#2c3e50'),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade300,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'assets/images/pray.png',
                            height: 120,
                          ),
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.to(NeedDoyaPage());
                            },
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: KText(
                                  text: 'নামাজের দোয়া ও সূরা',
                                  textAlign: TextAlign.center,
                                  fontFamily: 'Hind Siliguri Bold',
                                  fontSize: 22,
                                  color: Colors.white,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  Get.to(AttentionDua());
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: HexColor('#2c3e50'),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade300,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Image.asset(
                            'assets/images/namazTime.png',
                            height: 90,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: KText(
                              text: 'নামাজের সময় সূচি',
                              textAlign: TextAlign.center,
                              fontFamily: 'Hind Siliguri Bold',
                              maxLines: 2,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  Get.to(AttentionDua());
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: HexColor('#2c3e50'),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.shade300,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Image.asset(
                          'assets/images/namaz_2.png',
                          height: 90,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: KText(
                            text: 'বিশেষ নামাজ সমূহ',
                            textAlign: TextAlign.center,
                            fontFamily: 'Hind Siliguri Bold',
                            maxLines: 2,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

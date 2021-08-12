import 'package:doya_app/src/controllers/doyaController.dart';
import 'package:doya_app/src/pages/aboutDoyaPage.dart';
import 'package:doya_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class NeedDoyaPage extends StatelessWidget {
  final _catagory = Get.put(DoyaController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'বাংলায় সকল দোয়া',
          fontSize: 20,
        ),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 3,
          ),
          shrinkWrap: true,
          primary: false,
          itemCount: _catagory.dailyDua.length,
          itemBuilder: (BuildContext context, int index) {
            final item = _catagory.dailyDua[index];
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Get.to(
                  AboutDuaPage(
                    doya: item,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    // height: 75,
                    // width: Get.width,
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
                    child: Stack(
                      children: [
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.only(top: 13),
                            child: Image.asset(
                              'assets/images/heading_1.png',
                              fit: BoxFit.cover,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 4, left: 60, right: 60),
                              child: KText(
                                text: '${item['title']}',
                                textAlign: TextAlign.center,
                                fontSize: 20,
                                maxLines: 2,
                                color: HexColor('#2c3e50'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      backgroundColor: HexColor('#2c3e50'),
    );
  }
}

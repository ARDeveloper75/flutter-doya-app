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
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              childAspectRatio: 1,
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
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: KText(
                                  text: '${item['title']}',
                                  fontSize: 20,
                                  maxLines: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            left: 50,
                            child: KText(
                              text: '${item['description']}',
                              fontSize: 1,
                              maxLines: 1,
                              color: HexColor('#2c3e50'),
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            left: 50,
                            child: KText(
                              text: '${item['dua']}',
                              fontSize: 1,
                              maxLines: 1,
                              color: HexColor('#2c3e50'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
      backgroundColor: HexColor('#2c3e50'),
    );
  }
}
// ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           primary: false,
          
//           itemCount: _catagory.dailyDua.length,
//           itemBuilder: (BuildContext context, int index) {
//             final item = _catagory.dailyDua[index];
//             return Padding(
//               padding: EdgeInsets.all(8.0),
//               child: GestureDetector(
//                 onTap: () => Get.to(
//                   AboutDuaPage(
//                     doya: item,
//                   ),
//                 ),
//                 child: Container(
//                   height: 75,
//                   width: Get.width,
//                   decoration: BoxDecoration(
//                     boxShadow: [BoxShadow(color: Colors.blue)],
//                     color: HexColor('#1abc9c').withOpacity(.50),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Center(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: KText(
//                         text: '« ${item['title']} »',
//                         fontSize: 20,
//                         maxLines: 2,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
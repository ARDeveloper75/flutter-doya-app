import 'package:doya_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutDuaPage extends StatelessWidget {
  final dynamic doya;
  AboutDuaPage({required this.doya});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/pray.png',
              width: 500,
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            Center(
              child: Card(
                clipBehavior: Clip.antiAlias,
                color: HexColor('#2c3e50'),
                child: KText(
                  text: (doya['title']),
                  color: Colors.white,
                  fontFamily: 'Hind Siliguri Bold',
                ),
              ),
            ),
            Center(
              child: Container(
                child: KText(
                  text: (doya['dua']),
                  color: Colors.white,
                  fontFamily: 'Hind Siliguri Bold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

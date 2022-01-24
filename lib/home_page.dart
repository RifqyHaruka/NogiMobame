// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nogizaka_project/ayame_message_example.dart';
import 'package:nogizaka_project/message.dart';
import 'package:nogizaka_project/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradasi1, gradasi2],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Talk',
              style: headerText,
            ),
          ],
        ),
      );
    }

    Widget fotoMember(String? img, String? nama) {
      return Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          // right: (index == 3) ? 10 : 0,
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(img as String), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              nama as String,
              style: headerText.copyWith(color: gradasi2),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Online',
                style: headerText.copyWith(color: gradasi2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessagePage()));
                        },
                        child: fotoMember(
                            'assets/member/kaki_haruka.jpg', '賀喜 遥香')),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AyameMessage()));
                        },
                        child: fotoMember(
                            'assets/member/tsutsui_ayame.jpg', '筒井 あやめ')),
                    fotoMember(
                        'assets/member/shibata_yuna_pp_fix.jpg', '柴田 柚菜'),
                  ],
                )),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     fotoMember(),
            //     fotoMember(),
            //     fotoMember(),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10), child: Divider()),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '乃木坂46',
                style: headerText.copyWith(color: gradasi2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    fotoMember('assets/member/akimoto_manatsu.jpg', '秋元 真夏'),
                    fotoMember('assets/member/saito_asuka.jpg', '齋藤 飛鳥'),
                    fotoMember('assets/member/waada_maaya.jpg', '和田 まあや'),
                    fotoMember('assets/member/higuchi_hina.jpg', '樋口 日奈'),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10), child: Divider()),
            SizedBox(
              height: 10,
            ),

            Center(
              child: Text(
                '乃木坂46 二期生',
                style: headerText.copyWith(color: gradasi2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    fotoMember(
                        'assets/member/kitano_hinako.jpg', '北野 日奈子\n (SEGGS)'),
                    fotoMember('assets/member/suzuki_ayane.jpg', '鈴木 絢音'),
                    fotoMember('assets/member/yamazaki_rena.jpg', '山崎 怜奈'),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10), child: Divider()),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '乃木坂46 三期生',
                style: headerText.copyWith(color: gradasi2),
              ),
            ),

            Center(
                child: Text(
              'IN PROGRESS',
              style: headerText.copyWith(color: Colors.black),
            )),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10), child: Divider()),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '乃木坂46 四期生',
                style: headerText.copyWith(color: gradasi2),
              ),
            ),
            Center(
                child: Text(
              'IN PROGRESS',
              style: headerText.copyWith(color: Colors.black),
            )),
            Container(),

            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

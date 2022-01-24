// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nogizaka_project/theme.dart';
import 'package:nogizaka_project/widget/chat_tile.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        flexibleSpace: Container(
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradasi1, gradasi2],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  '賀喜 遥香',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 60,
                ),
                Image.asset(
                  'assets/icon/message.png',
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/icon/triple.png',
                  color: Colors.white,
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      );
    }
    // PreferredSizeWidget header() {
    //   //   return Container(
    //   //     height: 100,
    //   //     width: MediaQuery.of(context).size.width,
    //   //     decoration: BoxDecoration(
    //   //         gradient: LinearGradient(
    //   //             colors: [gradasi1, gradasi2],
    //   //             begin: Alignment.bottomLeft,
    //   //             end: Alignment.bottomRight)),
    //   //     child: Column(
    //   //       mainAxisAlignment: MainAxisAlignment.center,
    //   //       crossAxisAlignment: CrossAxisAlignment.center,
    //   //       children: [
    //   //         SizedBox(
    //   //           height: 40,
    //   //         ),
    //   //         Text(
    //   //           'Talk',
    //   //           style: headerText,
    //   //         ),
    //   //       ]
    //   //     ),
    //   //   );
    //   // }
    // }

    Widget fotoMember(String? img) {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
          // right: (index == 3) ? 10 : 0,
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(img as String), fit: BoxFit.cover)),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ChatTile('私 は Rifqy君 の 彼女 です'),
          // ChatTile('嬉しい です'),
          // ChatTile('会いたいな'),
          // ChatTile('今 私 の 写真 を あげる'),
          ChatTile(
            'text',
            text: '私 は Rifqy君 の 彼女 です',
          ),
          ChatTile(
            'text',
            text: '嬉しい です',
          ),
          ChatTile(
            'text',
            text: '会いたいな',
          ),
          ChatTile(
            'text',
            text: '今 私 の 写真 を あげる',
          ),
          ChatTile(
            'picture',
            img: 'assets/member/haruka.jpg',
          ),

          // Stack(
          //   children: [
          //     Row(
          //       children: [
          //         fotoMember('assets/member/kaki_haruka.jpg'),
          //         SizedBox(
          //           width: 10,
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(bottom: 20),
          //           child: Text(
          //             '賀喜 遥香',
          //             style: TextStyle(color: Colors.grey),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 90,
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(right: 20, bottom: 20),
          //           child: Text(
          //             '01/24/2022 13.30',
          //             style: TextStyle(color: Colors.grey),
          //           ),
          //         )
          //       ],
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(top: 45, left: 90),
          //       height: 200,
          //       width: MediaQuery.of(context).size.width - 110,
          //       color: gradasi1,
          //       child: Center(
          //           child: Image.asset(
          //         'assets/icon/picture.png',
          //         color: Colors.white,
          //         width: 24,
          //         height: 24,
          //       )),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

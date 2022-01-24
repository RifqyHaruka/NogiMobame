// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member

import 'dart:async';

import 'package:flutter/material.dart';

import '../theme.dart';

class ChatTile extends StatefulWidget {
  final String? text;
  final String? messageType;
  final String? img;

  ChatTile(this.messageType, {this.text, this.img});
  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  bool isLoad = false;
  bool isLoaded = false;
  @override
  Widget build(BuildContext context) {
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

    return (widget.messageType == 'text')
        ? Stack(
            children: [
              Row(
                children: [
                  fotoMember('assets/member/kaki_haruka.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      '賀喜 遥香',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, bottom: 20),
                    child: Text(
                      '01/24/2022 13.30',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isLoad = true;
                    });
                    print(isLoad);
                    print(isLoaded);

                    Timer(Duration(seconds: 2), () {
                      setState(() {
                        isLoad = false;
                        isLoaded = true;
                      });
                    });
                  },
                  child: (isLoaded == false && isLoad == false)
                      ? Container(
                          margin: EdgeInsets.only(top: 45, left: 90),
                          height: 40,
                          width: MediaQuery.of(context).size.width - 110,
                          color: gradasi1,
                          child: Center(
                              child: Image.asset(
                            'assets/icon/unnreadchat.png',
                            color: Colors.white,
                            width: 24,
                            height: 24,
                          )),
                        )
                      : (isLoaded == false && isLoad == true)
                          ? Container(
                              margin: EdgeInsets.only(top: 45, left: 90),
                              height: 40,
                              width: MediaQuery.of(context).size.width - 110,
                              color: gradasi1,
                              child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Center(
                                      child: CircularProgressIndicator(
                                    color: gradasi2,
                                    backgroundColor: gradasi1,
                                    strokeWidth: 2,
                                  ))),
                            )
                          : Container(
                              margin: EdgeInsets.only(top: 45, left: 90),
                              height: 40,
                              width: MediaQuery.of(context).size.width - 110,
                              color: Color(0xffFFEFEF),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, bottom: 10),
                                child: Text(
                                  '${widget.text}',
                                  style: TextStyle(color: Color(0xffBC8CF2)),
                                ),
                              ),
                            ))
            ],
          )
        : Stack(
            children: [
              Row(
                children: [
                  fotoMember('assets/member/kaki_haruka.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      '賀喜 遥香',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, bottom: 20),
                    child: Text(
                      '01/24/2022 13.30',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),

              GestureDetector(
                  onTap: () {
                    setState(() {
                      isLoad = true;
                    });
                    print(isLoad);
                    print(isLoaded);

                    Timer(Duration(seconds: 3), () {
                      setState(() {
                        isLoad = false;
                        isLoaded = true;
                      });
                    });
                  },
                  child: (isLoaded == false && isLoad == false)
                      ? Container(
                          margin: EdgeInsets.only(top: 45, left: 90),
                          height: 200,
                          width: MediaQuery.of(context).size.width - 110,
                          color: gradasi1,
                          child: Center(
                              child: Image.asset(
                            'assets/icon/picture.png',
                            color: Colors.white,
                            width: 24,
                            height: 24,
                          )),
                        )
                      : (isLoaded == false && isLoad == true)
                          ? Container(
                              margin: EdgeInsets.only(top: 45, left: 90),
                              height: 200,
                              width: MediaQuery.of(context).size.width - 110,
                              color: gradasi1,
                              child: Center(
                                  child: CircularProgressIndicator(
                                color: gradasi2,
                                backgroundColor: gradasi1,
                                strokeWidth: 2,
                              )),
                            )
                          : Container(
                              margin: EdgeInsets.only(top: 45, left: 90),
                              height: 200,
                              width: MediaQuery.of(context).size.width - 110,
                              color: Color(0xffFFEFEF),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10),
                                  child: Image.asset(
                                    '${widget.img}',
                                    fit: BoxFit.contain,
                                  )),
                            ))

              // Container(
              //   margin: EdgeInsets.only(top: 45, left: 90),
              //   height: 200,
              //   width: MediaQuery.of(context).size.width - 110,
              //   color: gradasi1,
              //   child: Center(
              //       child: Image.asset(
              //     'assets/icon/picture.png',
              //     color: Colors.white,
              //     width: 24,
              //     height: 24,
              //   )),
              // )
            ],
          );
  }
}

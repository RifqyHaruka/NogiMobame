// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nogizaka_project/comingSoon.dart';
import 'package:nogizaka_project/home_page.dart';
import 'package:nogizaka_project/theme.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return ClipRRect(
          child: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
            print(currentIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/chat.png',
                width: 30,
                height: 30,
                color: (currentIndex == 0) ? gradasi1 : Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icon/blog.png',
                  width: 30,
                  height: 30,
                  color: (currentIndex == 1) ? gradasi1 : Colors.black),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icon/news.png',
                  width: 30,
                  height: 30,
                  color: (currentIndex == 2) ? gradasi1 : Colors.black),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icon/settings.png',
                  width: 30,
                  height: 30,
                  color: (currentIndex == 3) ? gradasi1 : Colors.black),
              label: '')
        ],
      ));
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ComingSoon();
          break;
        case 2:
          return ComingSoon();
          break;
        case 3:
          return ComingSoon();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: navbar(),
      body: body(),
    );
  }
}

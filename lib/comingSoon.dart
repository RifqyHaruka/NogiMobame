// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/icon/comingsoon.png'),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';


import 'login_page_left_side.dart';
import 'login_page_right_side.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 640,
            width: 1080,
            margin: EdgeInsets.symmetric(horizontal: 24),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: Row(
              children: [
                 LoginPageLeftSide(),
                if (MediaQuery.of(context).size.width > 900)
                   LoginPageRightSide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

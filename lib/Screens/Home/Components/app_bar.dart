import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';
import 'package:food_web/Screens/Home/Components/login_page.dart';


import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/tunisair.jpg.webp",
            height: 75,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),

          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "about",
            press: () {},
          ),

          MenuItem(
            title: "Contact",
            press: () {},
          ),
    TextButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>
    const LoginPage()),
    );
    },
    child: const Text(
    'Login',
    ),),
          DefaultButton(
            text: "Get Started",
            press: () {},
          ),
        ],
      ),
    );
  }
}

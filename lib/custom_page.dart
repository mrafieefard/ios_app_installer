import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_app_installer/bottom_nav.dart';
import 'package:ios_app_installer/ui.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({super.key});

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Scaffold(
        bottomNavigationBar: BottomNavbar(),
        appBar: PreferredSize(
            preferredSize: Size(screen.width, 130),
            child: Column(
              children: [
                Container(
                  width: screen.width,
                  height: 90,
                  color: UiColors().topNav,
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Image.asset(
                      'assets/images/icon.png',
                      width: 99,
                      height: 38,
                    ),
                  ),
                ),
                Container(
                  width: screen.width,
                  height: 40,
                  color: UiColors().underTopNav,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Signing for ",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        "iPhone 13",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                )
              ],
            )),
        body: Text("Hi"));
  }
}

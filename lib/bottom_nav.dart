import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_app_installer/ui.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key, index});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Container(
      width: screen.width,
      height: 83,
      color: UiColors().bottomNav,
      alignment: Alignment.topCenter,
      child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Row(
            children: [
              SizedBox(
                width: screen.width / 3,
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.appStoreIos,
                      size: 24,
                      color: UiColors().deactiveColor,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: UiColors().deactiveColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: screen.width / 3,
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.layerGroup,
                      size: 24,
                      color: UiColors().deactiveColor,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Apps",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: UiColors().deactiveColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: screen.width / 3,
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.arrowUpFromBracket,
                      size: 24,
                      color: UiColors().deactiveColor,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Custom",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: UiColors().deactiveColor),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

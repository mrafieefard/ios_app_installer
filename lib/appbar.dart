import 'package:flutter/material.dart';
import 'package:ios_app_installer/ui.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Column(
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
    );
  }
}

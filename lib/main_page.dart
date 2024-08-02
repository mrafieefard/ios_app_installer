import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ios_app_installer/appbar.dart';
import 'package:ios_app_installer/bottom_nav.dart';
import 'package:ios_app_installer/pages/apps_page.dart';
import 'package:ios_app_installer/pages/custom_page.dart';
import 'package:ios_app_installer/pages/home_page.dart';
import 'package:ios_app_installer/ui.dart';

import 'controllers.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    final Controllers controller = Get.put(Controllers());

    final pages = [
      HomePage(),
      AppsPage(),
      CustomPage()
    ];

    return Scaffold(
        bottomNavigationBar: BottomNavbar(),
        appBar: PreferredSize(child: Appbar(),preferredSize: Size(screen.width,130),),
        body: Obx(()=>pages[controller.page_index.value]));
  }
}

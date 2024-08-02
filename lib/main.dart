import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ios_app_installer/bottom_nav.dart';
import 'package:ios_app_installer/custom_page.dart';
import 'package:ios_app_installer/ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitUp,
     DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: UiColors().bg,
        useMaterial3: true,
      ),
      home: const CustomPage(),
    );
  }
}

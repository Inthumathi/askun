import 'package:flutter/material.dart';
import 'UI Screen/Splash Screen/splashscreen.dart';
import 'utilites/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Askun',
      theme: ThemeData(
        primaryColor:primaryColor,
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xfff27130),
            iconTheme: IconThemeData(
              color: whiteColor,
            ),
            actionsIconTheme: IconThemeData(
              color: whiteColor,
            )
          )
      ),
      home: SplashScreen(),
    );
  }
}

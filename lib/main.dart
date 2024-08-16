import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/splash/widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimarycolor,
      ),
      home: splashView(),
    );
  }
}

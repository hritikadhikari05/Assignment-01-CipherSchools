import 'package:cipher_task/pages/courses/controller/course.controller.dart';
import 'package:cipher_task/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  CourseController courseController = Get.put(CourseController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xfff3912e),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color(0xff222831),
            background: Colors.white,
            primary: const Color(0xff2c3d4f),
            tertiary: const Color(0xff15181e)),
        // primarySwatch: MaterialColor,
      ),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

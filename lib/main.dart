import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/User.dart';
import 'page/HomePage.dart';
import 'page/MenuPage.dart';
import 'page/LogInPage.dart';

void main() {
  initController();
  runApp(const MyApp());
}

// GetX로 만든 컨트롤러 등록
void initController() {
  Get.put(User(name: ''.obs, age: 0.obs, mobile: ''.obs));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFE9EFF3),
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(title:'홈 화면'),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/menu',
          page: () => const MenuPage(title:'메뉴 화면'),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/login',
          page: () => const LogInPage(),
          transition: Transition.rightToLeft,
        ),
      ],
    );
  }
}


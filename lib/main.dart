import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mypage3/model/UserModel.dart';

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
  // Get.put(User(
  //   userId: ''.obs,
  //   userPw: ''.obs,
  //   userName: ''.obs,
  //   deptCode: ''.obs,
  //   medClass: ''.obs,
  //   mobile: ''.obs,
  //   deptShortCode: ''.obs,
  //   wardShortCode: ''.obs,
  //   doctor1Id: ''.obs,
  //   doctor1Name: ''.obs,
  //   doctor2Id: ''.obs,
  //   doctor2Name: ''.obs,
  //   deptCode1: ''.obs,
  //   medGroup: ''.obs,
  //   careGrade: ''.obs,
  //   userType: ''.obs,
  //   imageCount: 0.obs,
  //   memoCount: 0.obs,
  //   sessionId: ''.obs,
  // ));
  Get.put(User(model: UserModel().obs));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFE9EFF3),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          hoverColor: Colors.white,
          fillColor: Colors.white,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(title: '홈 화면'),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/menu',
          page: () => const MenuPage(title: '메뉴 화면'),
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

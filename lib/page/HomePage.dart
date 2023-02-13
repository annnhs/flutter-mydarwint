import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/User.dart';
import '../util/Util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var nameController = TextEditingController();

  User user = Get.find();

  @override
  void dispose() {
    nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              width: 200,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: nameController..text = user.name!.value,
              ),
            ),
            Container(
              child: Obx(
                () => Text('이름 : ${user.name!.value}'),
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text('이름 변경',),
                onPressed: () {
                  changeName();
                },
              ),
            ),
            Container(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.accessibility, size: 15,),
                label: Text('메뉴 화면으로',),
                onPressed: () {
                  Get.toNamed('/menu');

                  Util.showSnackbar(title: '알림', message: '메뉴 화면으로 이동합니다.');
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.logout, size: 15,),
                label: Text('로그아웃',),
                onPressed: openDialog,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeName() {
    // 우선 이름만
    user.applyData(name: nameController.text);
  }

  void openDialog() {
    Util.showYesNoDialog(
      title: '로그아웃',
      message: '정말로 로그아웃하시겠습니까?',
      yesCallback: () {
        // Util.showSnackbar(title: '알림', message: '예 버튼 눌렀음');
        Get.back();
        Util.showSnackbar(title: '알림', message: '예 버튼 눌렀음');
      },
      noCallback: () {
        // Util.showSnackbar(title: '알림', message: '아니오 버튼 눌렀음');
        Get.back();
        Util.showSnackbar(title: '알림', message: '아니오 버튼 눌렀음');
      },
    );
  }

}
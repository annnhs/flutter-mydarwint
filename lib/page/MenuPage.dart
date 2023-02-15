import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/User.dart';
import '../util/Util.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  User user = Get.find();

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
              // child: Obx(
                // () => Text('이름 : ${user.name!.value}'),
              // ),
            ),
            Container(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.accessibility, size: 15,),
                label: Text('돌아가기',),
                onPressed: () async {

                  Util.showProgressDialog(context);

                  await Future.delayed(const Duration(milliseconds: 2000));
                  Get.back();

                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mypage3/data/User.dart';
import 'package:mypage3/model/UserModel.dart';
import 'package:mypage3/util/Util.dart';

import 'animated_hover.dart';

class LoginForm extends StatelessWidget {
  LoginForm({ super.key, });

  User user = Get.find();

  String userId = '';
  String userPw = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AnimatedHover(
              size: const Size(360, 56),
              hoverColor: Colors.white,
              bgColor: Colors.white,
              border: Border.all(),
              offset: const Offset(6, 6),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextFormField(
                  onSaved: (id) {
                    userId = id!;
                  },
                  decoration: const InputDecoration(
                    hintText: 'ID',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: AnimatedHover(
                size: const Size(360, 56),
                hoverColor: Colors.white,
                bgColor: Colors.white,
                border: Border.all(),
                offset: const Offset(6, 6),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: TextFormField(
                    onSaved: (pw) {
                      userPw = pw!;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'PASSWORD',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24,),
            AnimatedHover(
              size: const Size(88, 48),
              curve: Curves.fastOutSlowIn,
              offset: const Offset(6, 6),
              child: ElevatedButton(
                onPressed: () {
                  requestLogin();
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(88, 48),
                  backgroundColor: const Color(0xFF556124),
                  foregroundColor: const Color(0xFFD9E1BE),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: const Text('Log In',),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void requestLogin() async {
    print('requestLogin 호출됨.');

    var dio = Dio();
    dio.options.headers['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8';
    dio.options.responseType = ResponseType.plain;

    var url = 'https://localhost:8001/smc-darwin-tab/v1/log-in';

    try {

      var response = await dio.request(
          url,
          data: {
            'requestCode': '1001',
            'id': userId,
            'password': userPw,
          },
          options: Options(
            method: 'POST',
          )
      );

      print('응답 : ${response.data}');

      var jsonMap = json.decode(response.data);

      var userModel = UserModel.fromJson(jsonMap);

      print('사용자 정보 : ${userModel.data?.body}');

      user.applyModel(model: userModel);

    } catch (err) {
      print('에러 : $err');
    }
  }
}

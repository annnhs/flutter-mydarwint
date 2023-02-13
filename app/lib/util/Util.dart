import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Util {

  static void showSnackbar({title, message}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2)
    );
  }

  static void showYesNoDialog({
    title,
    message,
    yesButtonTitle,
    noButtonTitle,
    required void Function() yesCallback,
    required void Function() noCallback,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: yesCallback,
            child: Text((yesButtonTitle == null) ? "예" : yesButtonTitle),
          ),
          TextButton(
            onPressed: noCallback,
            child: Text((noButtonTitle == null) ? "아니오" : noButtonTitle),
          ),
        ],
      )
    );
  }

  static void showProgressDialog(context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(
            backgroundColor: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text('데이터 처리 중...'),
          ),
        ],
      ),
    );

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}
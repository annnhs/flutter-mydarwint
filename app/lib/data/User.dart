import 'package:get/get.dart';

class User extends GetxController {
  Rx<String>? name;
  Rx<int>? age;
  Rx<String>? mobile;

  User({this.name, this.age, this.mobile});

  void setData({name, age, mobile}) {
    (this.name != null) ? this.name!.value = name : ''.obs;
    (this.age != null) ? this.age!.value = age : 0.obs;
    (this.mobile != null) ? this.mobile!.value = mobile : ''.obs;
  }

  void applyData({name, age, mobile}) {
    setData(name: name, age: age, mobile: mobile);
    update();
  }

}

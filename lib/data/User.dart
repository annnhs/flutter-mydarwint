import 'package:get/get.dart';

import '../model/UserModel.dart';

class User extends GetxController {

  Rx<UserModel>? model;

  User({this.model});

  void setModel({model}) {
    this.model?.value = model;
  }

  void applyModel({model}) {
    setModel(model: model);
    update();
  }


  // Rx<String>? userId;
  // Rx<String>? userPw;
  // Rx<String>? userName;
  // Rx<String>? deptCode;
  // Rx<String>? medClass;
  // Rx<String>? mobile;
  // Rx<String>? deptShortCode;
  // Rx<String>? wardShortCode;
  // Rx<String>? doctor1Id;
  // Rx<String>? doctor1Name;
  // Rx<String>? doctor2Id;
  // Rx<String>? doctor2Name;
  // Rx<String>? deptCode1;
  // Rx<String>? medGroup;
  // Rx<String>? careGrade;
  // Rx<String>? userType;
  // Rx<int>? imageCount;
  // Rx<int>? memoCount;
  // Rx<String>? sessionId;
  //
  // User({
  //   this.userId,
  //   this.userPw,
  //   this.userName,
  //   this.deptCode,
  //   this.medClass,
  //   this.mobile,
  //   this.deptShortCode,
  //   this.wardShortCode,
  //   this.doctor1Id,
  //   this.doctor1Name,
  //   this.doctor2Id,
  //   this.doctor2Name,
  //   this.deptCode1,
  //   this.medGroup,
  //   this.careGrade,
  //   this.userType,
  //   this.imageCount,
  //   this.memoCount,
  //   this.sessionId,
  // });
  //
  // void setData({
  //   userId,
  //   userPw,
  //   userName,
  //   deptCode,
  //   medClass,
  //   mobile,
  //   deptShortCode,
  //   wardShortCode,
  //   doctor1Id,
  //   doctor1Name,
  //   doctor2Id,
  //   doctor2Name,
  //   deptCode1,
  //   medGroup,
  //   careGrade,
  //   userType,
  //   imageCount,
  //   memoCount,
  //   sessionId,
  //   permittedWardList,
  // }) {
  //   (this.userId != null) ? this.userId!.value = userId : ''.obs;
  //   (this.userPw != null) ? this.userPw!.value = userPw : ''.obs;
  //   (this.userName != null) ? this.userName!.value = userName : ''.obs;
  //   (this.deptCode != null) ? this.deptCode!.value = deptCode : ''.obs;
  //   (this.medClass != null) ? this.medClass!.value = medClass : ''.obs;
  //   (this.mobile != null) ? this.mobile!.value = mobile : ''.obs;
  //   (this.deptShortCode != null)
  //       ? this.deptShortCode!.value = deptShortCode
  //       : ''.obs;
  //   (this.wardShortCode != null)
  //       ? this.wardShortCode!.value = wardShortCode
  //       : ''.obs;
  //   (this.doctor1Id != null) ? this.doctor1Id!.value = doctor1Id : ''.obs;
  //   (this.doctor1Name != null) ? this.doctor1Name!.value = doctor1Name : ''.obs;
  //   (this.doctor2Id != null) ? this.doctor2Id!.value = doctor2Id : ''.obs;
  //   (this.doctor2Name != null) ? this.doctor2Name!.value = doctor2Name : ''.obs;
  //   (this.deptCode1 != null) ? this.deptCode1!.value = deptCode1 : ''.obs;
  //   (this.medGroup != null) ? this.medGroup!.value = medGroup : ''.obs;
  //   (this.careGrade != null) ? this.careGrade!.value = careGrade : ''.obs;
  //   (this.userType != null) ? this.userType!.value = userType : ''.obs;
  //   (this.imageCount != null) ? this.imageCount!.value = imageCount : 0.obs;
  //   (this.memoCount != null) ? this.memoCount!.value = memoCount : 0.obs;
  //   (this.sessionId != null) ? this.sessionId!.value = sessionId : ''.obs;
  // }
  //
  // void applyData({
  //   userId,
  //   userPw,
  //   userName,
  //   deptCode,
  //   medClass,
  //   mobile,
  //   deptShortCode,
  //   wardShortCode,
  //   doctor1Id,
  //   doctor1Name,
  //   doctor2Id,
  //   doctor2Name,
  //   deptCode1,
  //   medGroup,
  //   careGrade,
  //   userType,
  //   imageCount,
  //   memoCount,
  //   sessionId,
  // }) {
  //   setData(
  //     userId: userId,
  //     userPw: userPw,
  //     userName: userName,
  //     deptCode: deptCode,
  //     mobile: mobile,
  //     deptShortCode: deptShortCode,
  //     wardShortCode: wardShortCode,
  //     doctor1Id: doctor1Id,
  //     doctor1Name: doctor1Name,
  //     doctor2Id: doctor2Id,
  //     doctor2Name: doctor2Name,
  //     deptCode1: deptCode1,
  //     medGroup: medGroup,
  //     careGrade: careGrade,
  //     userType: userType,
  //     imageCount: imageCount,
  //     memoCount: memoCount,
  //     sessionId: sessionId,
  //   );
  //   update();
  // }
}

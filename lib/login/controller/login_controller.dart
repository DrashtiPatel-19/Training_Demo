import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void callLoginApi() async {
    try {
      final response = await post(
          Uri.parse('https://soughahadmin.demo.brainvire.dev/api/v1/signin'),
          body: {
            'email': emailController.value.toString(),
            'password': passwordController.value.toString(),
            'device_type': "Android",
          });

          var data = jsonDecode(response.body);
          print("Login Data : + $data");
          print(response.statusCode);

          if(response.statusCode == 200){
            Get.snackbar("Login Message", "Login Successfull");
          }else{
            Get.snackbar("Login Message", "Login Failed");
          }
    } catch (e) {
      print(e);
    }
  }
}

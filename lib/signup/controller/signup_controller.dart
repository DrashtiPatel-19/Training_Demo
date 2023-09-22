import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class SignupController extends GetxController {

  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final mobileController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final cPasswordController = TextEditingController().obs;

  void callSignupApi() async {
    try {
      final response = await post(
          Uri.parse('https://soughahadmin.demo.brainvire.dev/api/v1/signup'),
          body: {
            'email': emailController.value.toString(),
            'password': passwordController.value.toString(),
            'name': nameController.value.toString(),
            'phone_number' : mobileController.value.toString(),
            'phone_code' : '+91',
            'used_referal_code' : 'false',
            'face_login' : 'false',
            'device_type': "Android",
            'g_recaptcha_response' : 'g_recaptcha_response'
          });

          var data = jsonDecode(response.body);
          print("Signup Data : + $data");
          print(response.statusCode);

          if(response.statusCode == 200){
            Get.snackbar("Signup Message", "Signup Successfull");
          }else{
            Get.snackbar("Signup Message", "Signup Failed");
          }
    } catch (e) {
      print(e);
    }
  }
}
